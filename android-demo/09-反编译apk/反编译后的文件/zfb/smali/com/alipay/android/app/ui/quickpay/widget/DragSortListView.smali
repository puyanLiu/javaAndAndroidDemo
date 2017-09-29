.class public Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;
.super Landroid/widget/ListView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;,
        Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$DragScrollProfile;,
        Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$DragSortListener;,
        Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$RemoveListener;,
        Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$DropListener;,
        Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$DragListener;,
        Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$FloatViewManager;,
        Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$f;,
        Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;,
        Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$e;,
        Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$g;,
        Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$d;,
        Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$a;
    }
.end annotation


# static fields
.field public static final DRAG_NEG_X:I = 0x2

.field public static final DRAG_NEG_Y:I = 0x8

.field public static final DRAG_POS_X:I = 0x1

.field public static final DRAG_POS_Y:I = 0x4


# instance fields
.field private A:[Landroid/view/View;

.field private B:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;

.field private C:F

.field private D:F

.field private E:I

.field private F:I

.field private G:F

.field private H:F

.field private I:F

.field private J:F

.field private K:F

.field private L:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$DragScrollProfile;

.field private M:I

.field private N:I

.field private O:I

.field private P:I

.field private Q:I

.field private R:I

.field private S:Z

.field private T:Z

.field private U:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$FloatViewManager;

.field private V:Landroid/view/MotionEvent;

.field private W:I

.field private Z:F

.field private a:Landroid/view/View;

.field private aa:F

.field private ab:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$a;

.field private ac:Z

.field private ad:Z

.field private ae:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$d;

.field private af:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$f;

.field private ag:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$e;

.field private ah:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;

.field private ai:Z

.field private aj:F

.field private ak:Z

.field private al:Z

.field private b:Landroid/graphics/Point;

.field private c:Landroid/graphics/Point;

.field private d:I

.field private e:Z

.field private f:Landroid/database/DataSetObserver;

.field private g:F

.field private h:F

.field private i:I

.field private j:I

.field private k:I

.field private l:Z

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$DragListener;

.field private s:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$DropListener;

.field private t:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$RemoveListener;

.field private u:Z

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 14

    .prologue
    .line 448
    invoke-direct/range {p0 .. p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->b:Landroid/graphics/Point;

    .line 82
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->c:Landroid/graphics/Point;

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->e:Z

    .line 103
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->g:F

    .line 104
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->h:F

    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->l:Z

    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->u:Z

    .line 196
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->v:I

    .line 203
    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->w:I

    .line 219
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->z:I

    .line 225
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->A:[Landroid/view/View;

    .line 237
    const v0, 0x3eaaaaab

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->C:F

    .line 244
    const v0, 0x3eaaaaab

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->D:F

    .line 268
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->K:F

    .line 276
    new-instance v0, Lcom/alipay/android/app/ui/quickpay/widget/d;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/ui/quickpay/widget/d;-><init>(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->L:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$DragScrollProfile;

    .line 340
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->R:I

    .line 346
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->S:Z

    .line 351
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->T:Z

    .line 356
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->U:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$FloatViewManager;

    .line 376
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->W:I

    .line 383
    const/high16 v0, 0x3e800000    # 0.25f

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->Z:F

    .line 392
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->aa:F

    .line 415
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->ac:Z

    .line 422
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->ad:Z

    .line 436
    new-instance v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$d;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$d;-><init>(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->ae:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$d;

    .line 445
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->aj:F

    .line 1679
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->ak:Z

    .line 2161
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->al:Z

    .line 450
    if-eqz p2, :cond_0

    .line 455
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->w:I

    .line 464
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->g:F

    .line 465
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->g:F

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->h:F

    .line 467
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->u:Z

    .line 469
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f333333    # 0.7f

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->Z:F

    .line 472
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->Z:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->l:Z

    .line 474
    const v0, 0x3ea8f5c3    # 0.33f

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->setDragScrollStart(F)V

    .line 478
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->K:F

    .line 481
    const-string/jumbo v0, "drag_handle"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    .line 489
    new-instance v1, Lcom/alipay/android/app/ui/quickpay/widget/DragSortController;

    invoke-direct {v1, p0, v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortController;-><init>(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;I)V

    .line 496
    invoke-virtual {v1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortController;->b()V

    .line 497
    invoke-virtual {v1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortController;->a()V

    .line 498
    invoke-virtual {v1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortController;->c()V

    .line 500
    iput-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->U:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$FloatViewManager;

    .line 501
    invoke-virtual {p0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 506
    :cond_0
    new-instance v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;-><init>(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->B:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;

    .line 508
    new-instance v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$f;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$f;-><init>(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->af:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$f;

    .line 513
    new-instance v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;-><init>(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->ah:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;

    .line 517
    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v0 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->V:Landroid/view/MotionEvent;

    .line 521
    new-instance v0, Lcom/alipay/android/app/ui/quickpay/widget/e;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/ui/quickpay/widget/e;-><init>(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->f:Landroid/database/DataSetObserver;

    .line 538
    return-void

    .line 472
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(I)I
    .locals 1

    .prologue
    .line 819
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 821
    if-eqz v0, :cond_0

    .line 823
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 827
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->c(I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->b(II)I

    move-result v0

    goto :goto_0
.end method

.method private a(II)I
    .locals 6

    .prologue
    .line 901
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getHeaderViewsCount()I

    move-result v0

    .line 902
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getFooterViewsCount()I

    move-result v1

    .line 908
    if-le p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getCount()I

    move-result v0

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_1

    :cond_0
    move v0, p2

    .line 955
    :goto_0
    return v0

    .line 912
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getDividerHeight()I

    move-result v0

    .line 916
    iget v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->x:I

    iget v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->w:I

    sub-int/2addr v1, v2

    .line 917
    invoke-direct {p0, p1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->c(I)I

    move-result v2

    .line 918
    invoke-direct {p0, p1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a(I)I

    move-result v3

    .line 923
    iget v4, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->k:I

    iget v5, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->m:I

    if-gt v4, v5, :cond_5

    .line 926
    iget v4, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->k:I

    if-ne p1, v4, :cond_4

    iget v4, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->j:I

    iget v5, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->k:I

    if-eq v4, v5, :cond_4

    .line 927
    iget v4, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->m:I

    if-ne p1, v4, :cond_3

    .line 928
    add-int v1, p2, v3

    iget v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->x:I

    sub-int p2, v1, v3

    .line 949
    :cond_2
    :goto_1
    iget v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->m:I

    if-gt p1, v1, :cond_7

    .line 950
    iget v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->x:I

    sub-int v0, v1, v0

    add-int/lit8 v1, p1, -0x1

    invoke-direct {p0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->c(I)I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    goto :goto_0

    .line 930
    :cond_3
    sub-int/2addr v3, v2

    .line 931
    add-int/2addr v3, p2

    sub-int p2, v3, v1

    .line 932
    goto :goto_1

    .line 933
    :cond_4
    iget v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->k:I

    if-le p1, v3, :cond_2

    iget v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->m:I

    if-gt p1, v3, :cond_2

    .line 934
    sub-int/2addr p2, v1

    goto :goto_1

    .line 940
    :cond_5
    iget v4, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->m:I

    if-le p1, v4, :cond_6

    iget v4, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->j:I

    if-gt p1, v4, :cond_6

    .line 941
    add-int/2addr p2, v1

    goto :goto_1

    .line 942
    :cond_6
    iget v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->k:I

    if-ne p1, v1, :cond_2

    iget v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->j:I

    iget v4, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->k:I

    if-eq v1, v4, :cond_2

    .line 943
    sub-int v1, v3, v2

    .line 944
    add-int/2addr p2, v1

    goto :goto_1

    .line 952
    :cond_7
    sub-int v0, v2, v0

    iget v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->x:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    goto :goto_0
.end method

.method private static a(III)I
    .locals 2

    .prologue
    .line 2732
    sub-int v1, p2, p1

    .line 2734
    add-int/lit8 v0, p0, -0x1

    .line 2735
    if-ge v0, p1, :cond_1

    .line 2736
    add-int/2addr v0, v1

    .line 2740
    :cond_0
    :goto_0
    return v0

    .line 2737
    :cond_1
    if-lt v0, p2, :cond_0

    .line 2738
    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private static a(Landroid/util/SparseBooleanArray;II[I[I)I
    .locals 7

    .prologue
    const/4 v1, -0x1

    const/4 v4, 0x0

    .line 2684
    .line 2686
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    move v2, v0

    move v0, v4

    :goto_0
    sub-int v3, v2, v0

    if-lez v3, :cond_1

    add-int v3, v0, v2

    shr-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v6

    if-ge v6, p1, :cond_0

    add-int/lit8 v0, v3, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v0, v5, :cond_2

    invoke-virtual {p0, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    if-ge v2, p2, :cond_2

    invoke-virtual {p0, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-nez v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    if-eq v0, v5, :cond_3

    invoke-virtual {p0, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    if-lt v2, p2, :cond_4

    :cond_3
    move v2, v1

    .line 2687
    :goto_2
    if-ne v2, v1, :cond_5

    .line 2728
    :goto_3
    return v4

    :cond_4
    move v2, v0

    .line 2686
    goto :goto_2

    .line 2690
    :cond_5
    invoke-virtual {p0, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    .line 2692
    add-int/lit8 v0, v1, 0x1

    .line 2693
    add-int/lit8 v2, v2, 0x1

    move v3, v4

    :goto_4
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    if-ge v2, v5, :cond_8

    invoke-virtual {p0, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    if-ge v5, p2, :cond_8

    .line 2694
    invoke-virtual {p0, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 2695
    if-ne v5, v0, :cond_7

    .line 2697
    add-int/lit8 v0, v0, 0x1

    .line 2693
    :cond_6
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 2699
    :cond_7
    aput v1, p3, v3

    .line 2700
    aput v0, p4, v3

    .line 2701
    add-int/lit8 v3, v3, 0x1

    .line 2703
    add-int/lit8 v0, v5, 0x1

    move v1, v5

    goto :goto_5

    .line 2707
    :cond_8
    if-ne v0, p2, :cond_9

    move v0, p1

    .line 2714
    :cond_9
    aput v1, p3, v3

    .line 2715
    aput v0, p4, v3

    .line 2716
    add-int/lit8 v0, v3, 0x1

    .line 2718
    const/4 v1, 0x1

    if-le v0, v1, :cond_a

    .line 2719
    aget v1, p3, v4

    if-ne v1, p1, :cond_a

    add-int/lit8 v1, v0, -0x1

    aget v1, p4, v1

    if-ne v1, p1, :cond_a

    .line 2724
    add-int/lit8 v1, v0, -0x1

    aget v1, p3, v1

    aput v1, p3, v4

    .line 2725
    add-int/lit8 v0, v0, -0x1

    :cond_a
    move v4, v0

    .line 2728
    goto :goto_3
.end method

.method private a()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 1473
    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->m:I

    .line 1474
    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->j:I

    .line 1475
    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->k:I

    .line 1476
    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->i:I

    .line 1477
    return-void
.end method

.method private a(ILandroid/graphics/Canvas;)V
    .locals 7

    .prologue
    .line 721
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 722
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getDividerHeight()I

    move-result v3

    .line 725
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 726
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 728
    if-eqz v0, :cond_0

    .line 729
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getPaddingLeft()I

    move-result v4

    .line 730
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getPaddingRight()I

    move-result v5

    sub-int v5, v1, v5

    .line 734
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 736
    iget v6, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->m:I

    if-le p1, v6, :cond_1

    .line 737
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v0

    add-int/2addr v1, v0

    .line 738
    add-int v0, v1, v3

    .line 746
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 747
    invoke-virtual {p2, v4, v1, v5, v0}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 748
    invoke-virtual {v2, v4, v1, v5, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 749
    invoke-virtual {v2, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 750
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    .line 753
    :cond_0
    return-void

    .line 740
    :cond_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v0

    sub-int/2addr v0, v1

    .line 741
    sub-int v1, v0, v3

    goto :goto_0
.end method

.method private a(ILandroid/view/View;Z)V
    .locals 3

    .prologue
    .line 1871
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1873
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->m:I

    if-eq p1, v0, :cond_5

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->j:I

    if-eq p1, v0, :cond_5

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->k:I

    if-eq p1, v0, :cond_5

    .line 1874
    const/4 v0, -0x2

    .line 1879
    :goto_0
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v0, v2, :cond_0

    .line 1880
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1881
    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1885
    :cond_0
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->j:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->k:I

    if-ne p1, v0, :cond_2

    .line 1886
    :cond_1
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->m:I

    if-ge p1, v0, :cond_6

    move-object v0, p2

    .line 1887
    check-cast v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortItemView;

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortItemView;->setGravity(I)V

    .line 1895
    :cond_2
    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v1

    .line 1896
    const/4 v0, 0x0

    .line 1898
    iget v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->m:I

    if-ne p1, v2, :cond_3

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 1899
    const/4 v0, 0x4

    .line 1902
    :cond_3
    if-eq v0, v1, :cond_4

    .line 1903
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1905
    :cond_4
    return-void

    .line 1876
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->b(ILandroid/view/View;Z)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->b(II)I

    move-result v0

    goto :goto_0

    .line 1888
    :cond_6
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->m:I

    if-le p1, v0, :cond_2

    move-object v0, p2

    .line 1889
    check-cast v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortItemView;

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortItemView;->setGravity(I)V

    goto :goto_1
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 2

    .prologue
    .line 1660
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 1661
    if-eqz v0, :cond_0

    .line 1662
    iget v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->M:I

    iput v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->O:I

    .line 1663
    iget v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->N:I

    iput v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->P:I

    .line 1665
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->M:I

    .line 1666
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->N:I

    .line 1667
    if-nez v0, :cond_1

    .line 1668
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->M:I

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->O:I

    .line 1669
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->N:I

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->P:I

    .line 1671
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->M:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->p:I

    .line 1672
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->N:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->q:I

    .line 1673
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2082
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2083
    if-nez v0, :cond_0

    .line 2084
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 2085
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2087
    :cond_0
    iget v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->z:I

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getListPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getListPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v1, v2, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 2090
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v2, :cond_1

    .line 2091
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 2095
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 2096
    return-void

    .line 2093
    :cond_1
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0
.end method

.method private a(Z)V
    .locals 2

    .prologue
    .line 2291
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getChildCount()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 2292
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getChildCount()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2294
    if-nez v1, :cond_0

    .line 2299
    :goto_0
    return-void

    .line 2298
    :cond_0
    invoke-direct {p0, v0, v1, p1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->c(ILandroid/view/View;Z)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)F
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->K:F

    return v0
.end method

.method static synthetic access$100(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->v:I

    return v0
.end method

.method static synthetic access$1000(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->w:I

    return v0
.end method

.method static synthetic access$102(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;I)I
    .locals 0

    .prologue
    .line 65
    iput p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->v:I

    return p1
.end method

.method static synthetic access$1100(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->x:I

    return v0
.end method

.method static synthetic access$1200(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->b()V

    return-void
.end method

.method static synthetic access$1300(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->j:I

    return v0
.end method

.method static synthetic access$1400(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->k:I

    return v0
.end method

.method static synthetic access$1500(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->ai:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)F
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->aj:F

    return v0
.end method

.method static synthetic access$1602(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;F)F
    .locals 0

    .prologue
    .line 65
    iput p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->aj:F

    return p1
.end method

.method static synthetic access$1616(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;F)F
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->aj:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->aj:F

    return v0
.end method

.method static synthetic access$1700(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->h()V

    return-void
.end method

.method static synthetic access$1800(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;ILandroid/view/View;Z)I
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->b(ILandroid/view/View;Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)V
    .locals 2

    .prologue
    .line 65
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->m:I

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->b(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;ILandroid/view/View;Z)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a(ILandroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->d:I

    return v0
.end method

.method static synthetic access$2100(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)F
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->H:F

    return v0
.end method

.method static synthetic access$2200(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)F
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->I:F

    return v0
.end method

.method static synthetic access$2300(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$DragScrollProfile;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->L:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$DragScrollProfile;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)F
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->G:F

    return v0
.end method

.method static synthetic access$2500(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)F
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->J:F

    return v0
.end method

.method static synthetic access$2602(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;Z)Z
    .locals 0

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->ac:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;ILandroid/view/View;Z)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->c(ILandroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->o:I

    return v0
.end method

.method static synthetic access$302(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;I)I
    .locals 0

    .prologue
    .line 65
    iput p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->o:I

    return p1
.end method

.method static synthetic access$400(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->y:I

    return v0
.end method

.method static synthetic access$500(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->b:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$600(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->N:I

    return v0
.end method

.method static synthetic access$700(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;Z)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->i:I

    return v0
.end method

.method static synthetic access$900(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->m:I

    return v0
.end method

.method private b(II)I
    .locals 4

    .prologue
    .line 1994
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getDividerHeight()I

    .line 1996
    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->l:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->j:I

    iget v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->k:I

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    .line 1997
    :goto_0
    iget v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->x:I

    iget v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->w:I

    sub-int/2addr v1, v2

    .line 1998
    iget v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->aa:F

    int-to-float v3, v1

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 2002
    iget v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->m:I

    if-ne p1, v3, :cond_5

    .line 2003
    iget v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->m:I

    iget v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->j:I

    if-ne v1, v3, :cond_3

    .line 2004
    if-eqz v0, :cond_2

    .line 2005
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->w:I

    add-int p2, v2, v0

    .line 2028
    :cond_0
    :goto_1
    return p2

    .line 1996
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2007
    :cond_2
    iget p2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->x:I

    goto :goto_1

    .line 2009
    :cond_3
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->m:I

    iget v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->k:I

    if-ne v0, v1, :cond_4

    .line 2011
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->x:I

    sub-int p2, v0, v2

    goto :goto_1

    .line 2013
    :cond_4
    iget p2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->w:I

    goto :goto_1

    .line 2015
    :cond_5
    iget v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->j:I

    if-ne p1, v3, :cond_7

    .line 2016
    if-eqz v0, :cond_6

    .line 2017
    add-int/2addr p2, v2

    goto :goto_1

    .line 2019
    :cond_6
    add-int/2addr p2, v1

    goto :goto_1

    .line 2021
    :cond_7
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->k:I

    if-ne p1, v0, :cond_0

    .line 2023
    add-int v0, p2, v1

    sub-int p2, v0, v2

    goto :goto_1
.end method

.method private b(ILandroid/view/View;Z)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1959
    iget v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->m:I

    if-ne p1, v1, :cond_1

    .line 1985
    :cond_0
    :goto_0
    return v0

    .line 1964
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getHeaderViewsCount()I

    move-result v1

    if-lt p1, v1, :cond_2

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getCount()I

    move-result v1

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getFooterViewsCount()I

    move-result v2

    sub-int/2addr v1, v2

    if-lt p1, v1, :cond_3

    .line 1970
    :cond_2
    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1972
    if-eqz v0, :cond_4

    .line 1973
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v1, :cond_4

    .line 1974
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 1967
    :cond_3
    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    goto :goto_1

    .line 1978
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 1980
    if-eqz v0, :cond_5

    if-eqz p3, :cond_0

    .line 1981
    :cond_5
    invoke-direct {p0, p2}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a(Landroid/view/View;)V

    .line 1982
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_0
.end method

.method private b()V
    .locals 4

    .prologue
    .line 1482
    const/4 v0, 0x2

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->v:I

    .line 1484
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->s:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$DropListener;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->i:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->i:I

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1485
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getHeaderViewsCount()I

    move-result v0

    .line 1486
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->s:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$DropListener;

    iget v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->m:I

    sub-int/2addr v2, v0

    iget v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->i:I

    sub-int v0, v3, v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$DropListener;->a(II)V

    .line 1489
    :cond_0
    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->h()V

    .line 1491
    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->c()V

    .line 1492
    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a()V

    .line 1493
    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->f()V

    .line 1496
    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->T:Z

    if-eqz v0, :cond_1

    .line 1497
    const/4 v0, 0x3

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->v:I

    .line 1501
    :goto_0
    return-void

    .line 1499
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->v:I

    goto :goto_0
.end method

.method private b(I)V
    .locals 1

    .prologue
    .line 1513
    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->v:I

    .line 1516
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->t:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$RemoveListener;

    if-eqz v0, :cond_0

    .line 1517
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->t:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$RemoveListener;

    invoke-interface {v0, p1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$RemoveListener;->a(I)V

    .line 1520
    :cond_0
    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->h()V

    .line 1522
    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->c()V

    .line 1523
    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a()V

    .line 1526
    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->T:Z

    if-eqz v0, :cond_1

    .line 1527
    const/4 v0, 0x3

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->v:I

    .line 1531
    :goto_0
    return-void

    .line 1529
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->v:I

    goto :goto_0
.end method

.method private c(I)I
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 1908
    iget v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->m:I

    if-ne p1, v1, :cond_1

    .line 1954
    :cond_0
    :goto_0
    return v0

    .line 1912
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1914
    if-eqz v1, :cond_2

    .line 1917
    invoke-direct {p0, p1, v1, v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->b(ILandroid/view/View;Z)I

    move-result v0

    goto :goto_0

    .line 1921
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->ae:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$d;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$d;->a(I)I

    move-result v0

    .line 1922
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1927
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 1928
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v1

    .line 1931
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    .line 1932
    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->A:[Landroid/view/View;

    array-length v3, v3

    if-eq v2, v3, :cond_3

    .line 1933
    new-array v2, v2, [Landroid/view/View;

    iput-object v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->A:[Landroid/view/View;

    .line 1936
    :cond_3
    if-ltz v1, :cond_5

    .line 1937
    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->A:[Landroid/view/View;

    aget-object v2, v2, v1

    if-nez v2, :cond_4

    .line 1938
    invoke-interface {v0, p1, v4, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1939
    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->A:[Landroid/view/View;

    aput-object v0, v2, v1

    .line 1949
    :goto_1
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->b(ILandroid/view/View;Z)I

    move-result v0

    .line 1952
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->ae:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$d;

    invoke-virtual {v1, p1, v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$d;->a(II)V

    goto :goto_0

    .line 1941
    :cond_4
    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->A:[Landroid/view/View;

    aget-object v1, v2, v1

    invoke-interface {v0, p1, v1, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 1945
    :cond_5
    invoke-interface {v0, p1, v4, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_1
.end method

.method private c()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1534
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getFirstVisiblePosition()I

    move-result v1

    .line 1536
    iget v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->m:I

    if-ge v2, v1, :cond_1

    .line 1539
    invoke-virtual {p0, v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1541
    if-eqz v2, :cond_0

    .line 1542
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v0

    .line 1545
    :cond_0
    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0, v1, v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->setSelectionFromTop(II)V

    .line 1547
    :cond_1
    return-void
.end method

.method private c(ILandroid/view/View;Z)V
    .locals 17

    .prologue
    .line 2302
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->ac:Z

    .line 2304
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->U:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$FloatViewManager;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->c:Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->M:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->N:I

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Point;->set(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->U:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$FloatViewManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->b:Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->c:Landroid/graphics/Point;

    invoke-interface {v2, v3}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$FloatViewManager;->a(Landroid/graphics/Point;)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->b:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->b:Landroid/graphics/Point;

    iget v4, v3, Landroid/graphics/Point;->y:I

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getPaddingLeft()I

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->R:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_10

    if-le v2, v3, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->b:Landroid/graphics/Point;

    iput v3, v2, Landroid/graphics/Point;->x:I

    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getHeaderViewsCount()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getFooterViewsCount()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getFirstVisiblePosition()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getLastVisiblePosition()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getPaddingTop()I

    move-result v2

    if-ge v6, v3, :cond_2

    sub-int v2, v3, v6

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    :cond_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->R:I

    and-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->m:I

    if-gt v6, v3, :cond_3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->m:I

    sub-int/2addr v3, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getHeight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v3, v8

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getCount()I

    move-result v8

    sub-int/2addr v8, v5

    add-int/lit8 v8, v8, -0x1

    if-lt v7, v8, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getCount()I

    move-result v3

    sub-int/2addr v3, v5

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    :cond_4
    move-object/from16 v0, p0

    iget v5, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->R:I

    and-int/lit8 v5, v5, 0x4

    if-nez v5, :cond_5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->m:I

    if-lt v7, v5, :cond_5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->m:I

    sub-int/2addr v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    :cond_5
    if-ge v4, v2, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->b:Landroid/graphics/Point;

    iput v2, v3, Landroid/graphics/Point;->y:I

    :cond_6
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->b:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->y:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->d:I

    .line 2306
    move-object/from16 v0, p0

    iget v9, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->j:I

    .line 2307
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->k:I

    .line 2309
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getFirstVisiblePosition()I

    move-result v4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->j:I

    sub-int v2, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getChildCount()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int v3, v4, v2

    sub-int v2, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    :cond_7
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a(II)I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getDividerHeight()I

    move-result v7

    move-object/from16 v0, p0

    iget v6, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->d:I

    if-ge v6, v4, :cond_13

    move v2, v3

    move v3, v4

    :goto_2
    if-ltz v2, :cond_8

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a(I)I

    move-result v4

    if-nez v2, :cond_12

    sub-int/2addr v5, v7

    sub-int v4, v5, v4

    :cond_8
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getHeaderViewsCount()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getFooterViewsCount()I

    move-result v7

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->j:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->k:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->aa:F

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->l:Z

    if-eqz v13, :cond_17

    sub-int v13, v4, v3

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->d:I

    if-ge v14, v4, :cond_15

    :goto_4
    const/high16 v14, 0x3f000000    # 0.5f

    move-object/from16 v0, p0

    iget v15, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->Z:F

    mul-float/2addr v14, v15

    int-to-float v13, v13

    mul-float/2addr v13, v14

    float-to-int v13, v13

    int-to-float v14, v13

    add-int/2addr v3, v13

    sub-int v13, v4, v13

    move-object/from16 v0, p0

    iget v15, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->d:I

    if-ge v15, v3, :cond_16

    add-int/lit8 v4, v2, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->j:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->k:I

    const/high16 v4, 0x3f000000    # 0.5f

    move-object/from16 v0, p0

    iget v13, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->d:I

    sub-int/2addr v3, v13

    int-to-float v3, v3

    mul-float/2addr v3, v4

    div-float/2addr v3, v14

    move-object/from16 v0, p0

    iput v3, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->aa:F

    :goto_5
    move-object/from16 v0, p0

    iget v3, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->j:I

    if-ge v3, v5, :cond_18

    move-object/from16 v0, p0

    iput v5, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->j:I

    move-object/from16 v0, p0

    iput v5, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->k:I

    move v2, v5

    :cond_9
    :goto_6
    move-object/from16 v0, p0

    iget v3, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->j:I

    if-ne v3, v8, :cond_a

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->k:I

    if-ne v3, v11, :cond_a

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->aa:F

    cmpl-float v3, v3, v12

    if-eqz v3, :cond_21

    :cond_a
    const/4 v3, 0x1

    :goto_7
    move-object/from16 v0, p0

    iget v4, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->i:I

    if-eq v2, v4, :cond_20

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->r:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$DragListener;

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->r:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$DragListener;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->i:I

    :cond_b
    move-object/from16 v0, p0

    iput v2, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->i:I

    const/4 v3, 0x1

    move v8, v3

    .line 2311
    :goto_8
    if-eqz v8, :cond_d

    .line 2312
    invoke-direct/range {p0 .. p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->f()V

    .line 2313
    const/4 v6, 0x0

    invoke-direct/range {p0 .. p1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->c(I)I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v3

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->b(II)I

    move-result v5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->m:I

    move/from16 v0, p1

    if-eq v0, v2, :cond_1f

    sub-int v2, v3, v4

    sub-int v4, v5, v4

    :goto_9
    move-object/from16 v0, p0

    iget v7, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->x:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->m:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->j:I

    if-eq v11, v12, :cond_c

    move-object/from16 v0, p0

    iget v11, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->m:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->k:I

    if-eq v11, v12, :cond_c

    move-object/from16 v0, p0

    iget v11, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->w:I

    sub-int/2addr v7, v11

    :cond_c
    move/from16 v0, p1

    if-gt v0, v9, :cond_19

    move-object/from16 v0, p0

    iget v2, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->j:I

    move/from16 v0, p1

    if-le v0, v2, :cond_1e

    sub-int v2, v7, v4

    add-int/lit8 v2, v2, 0x0

    .line 2316
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->setSelectionFromTop(II)V

    .line 2317
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->layoutChildren()V

    .line 2320
    :cond_d
    if-nez v8, :cond_e

    if-eqz p3, :cond_f

    .line 2321
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->invalidate()V

    .line 2324
    :cond_f
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->ac:Z

    .line 2325
    return-void

    .line 2304
    :cond_10
    move-object/from16 v0, p0

    iget v5, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->R:I

    and-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_1

    if-ge v2, v3, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->b:Landroid/graphics/Point;

    iput v3, v2, Landroid/graphics/Point;->x:I

    goto/16 :goto_0

    :cond_11
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->x:I

    add-int/2addr v2, v4

    if-le v2, v3, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->b:Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->x:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Point;->y:I

    goto/16 :goto_1

    .line 2309
    :cond_12
    add-int/2addr v4, v7

    sub-int/2addr v5, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a(II)I

    move-result v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->d:I

    if-ge v6, v4, :cond_8

    move v3, v4

    goto/16 :goto_2

    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getCount()I

    move-result v8

    move v6, v5

    move v5, v2

    move v2, v3

    move v3, v4

    :goto_b
    if-ge v2, v8, :cond_8

    add-int/lit8 v4, v8, -0x1

    if-ne v2, v4, :cond_14

    add-int v4, v6, v7

    add-int/2addr v4, v5

    goto/16 :goto_3

    :cond_14
    add-int v4, v7, v5

    add-int/2addr v6, v4

    add-int/lit8 v4, v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a(I)I

    move-result v5

    add-int/lit8 v4, v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a(II)I

    move-result v4

    move-object/from16 v0, p0

    iget v11, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->d:I

    if-lt v11, v4, :cond_8

    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_b

    :cond_15
    move/from16 v16, v3

    move v3, v4

    move/from16 v4, v16

    goto/16 :goto_4

    :cond_16
    move-object/from16 v0, p0

    iget v3, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->d:I

    if-lt v3, v13, :cond_17

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->j:I

    add-int/lit8 v3, v2, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->k:I

    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v13, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v15, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->d:I

    sub-int/2addr v4, v15

    int-to-float v4, v4

    div-float/2addr v4, v14

    add-float/2addr v4, v13

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->aa:F

    goto/16 :goto_5

    :cond_17
    move-object/from16 v0, p0

    iput v2, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->j:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->k:I

    goto/16 :goto_5

    :cond_18
    move-object/from16 v0, p0

    iget v3, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->k:I

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getCount()I

    move-result v4

    sub-int/2addr v4, v7

    if-lt v3, v4, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getCount()I

    move-result v2

    sub-int/2addr v2, v7

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->j:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->k:I

    goto/16 :goto_6

    .line 2313
    :cond_19
    move/from16 v0, p1

    if-ne v0, v10, :cond_1c

    move-object/from16 v0, p0

    iget v4, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->j:I

    move/from16 v0, p1

    if-gt v0, v4, :cond_1a

    sub-int/2addr v2, v7

    add-int/lit8 v2, v2, 0x0

    goto/16 :goto_a

    :cond_1a
    move-object/from16 v0, p0

    iget v4, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->k:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_1b

    sub-int v2, v3, v5

    add-int/lit8 v2, v2, 0x0

    goto/16 :goto_a

    :cond_1b
    add-int/lit8 v2, v2, 0x0

    goto/16 :goto_a

    :cond_1c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->j:I

    move/from16 v0, p1

    if-gt v0, v2, :cond_1d

    rsub-int/lit8 v2, v7, 0x0

    goto/16 :goto_a

    :cond_1d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->k:I

    move/from16 v0, p1

    if-ne v0, v2, :cond_1e

    rsub-int/lit8 v2, v4, 0x0

    goto/16 :goto_a

    :cond_1e
    move v2, v6

    goto/16 :goto_a

    :cond_1f
    move v2, v3

    move v4, v5

    goto/16 :goto_9

    :cond_20
    move v8, v3

    goto/16 :goto_8

    :cond_21
    move v3, v6

    goto/16 :goto_7
.end method

.method private d()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1649
    iput v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->W:I

    .line 1650
    iput-boolean v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->T:Z

    .line 1651
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->v:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1652
    iput v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->v:I

    .line 1654
    :cond_0
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->g:F

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->h:F

    .line 1655
    iput-boolean v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->ak:Z

    .line 1656
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->ae:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$d;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$d;->a()V

    .line 1657
    return-void
.end method

.method private e()V
    .locals 6

    .prologue
    .line 1821
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getPaddingTop()I

    move-result v0

    .line 1822
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getHeight()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1823
    int-to-float v2, v1

    .line 1825
    int-to-float v3, v0

    iget v4, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->C:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iput v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->H:F

    .line 1826
    int-to-float v3, v0

    const/high16 v4, 0x3f800000    # 1.0f

    iget v5, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->D:F

    sub-float/2addr v4, v5

    mul-float/2addr v2, v4

    add-float/2addr v2, v3

    iput v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->G:F

    .line 1828
    iget v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->H:F

    float-to-int v2, v2

    iput v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->E:I

    .line 1829
    iget v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->G:F

    float-to-int v2, v2

    iput v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->F:I

    .line 1831
    iget v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->H:F

    int-to-float v3, v0

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->I:F

    .line 1832
    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->G:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->J:F

    .line 1833
    return-void
.end method

.method private f()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1842
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getFirstVisiblePosition()I

    move-result v1

    .line 1843
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getLastVisiblePosition()I

    move-result v2

    .line 1845
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getHeaderViewsCount()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1846
    sub-int/2addr v2, v1

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getFooterViewsCount()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1848
    :goto_0
    if-gt v0, v2, :cond_1

    .line 1849
    invoke-virtual {p0, v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1850
    if-eqz v3, :cond_0

    .line 1851
    add-int v4, v1, v0

    invoke-direct {p0, v4, v3, v5}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a(ILandroid/view/View;Z)V

    .line 1848
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1854
    :cond_1
    return-void
.end method

.method private g()V
    .locals 1

    .prologue
    .line 2099
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2100
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a(Landroid/view/View;)V

    .line 2101
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->x:I

    .line 2102
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->x:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->y:I

    .line 2104
    :cond_0
    return-void
.end method

.method private h()V
    .locals 2

    .prologue
    .line 2393
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2394
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2395
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->U:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$FloatViewManager;

    if-eqz v0, :cond_0

    .line 2396
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->U:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$FloatViewManager;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$FloatViewManager;->a(Landroid/view/View;)V

    .line 2398
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a:Landroid/view/View;

    .line 2399
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->invalidate()V

    .line 2401
    :cond_1
    return-void
.end method


# virtual methods
.method public cancelDrag()V
    .locals 2

    .prologue
    .line 1458
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->v:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1459
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->B:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->c()V

    .line 1460
    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->h()V

    .line 1461
    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a()V

    .line 1462
    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->f()V

    .line 1464
    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->T:Z

    if-eqz v0, :cond_1

    .line 1465
    const/4 v0, 0x3

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->v:I

    .line 1470
    :cond_0
    :goto_0
    return-void

    .line 1467
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->v:I

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .prologue
    const/16 v6, 0x1f

    const/4 v4, 0x0

    const/high16 v9, 0x41600000    # 14.0f

    const/4 v1, 0x0

    .line 757
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 759
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->v:I

    if-eqz v0, :cond_1

    .line 761
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->j:I

    iget v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->m:I

    if-eq v0, v2, :cond_0

    .line 762
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->j:I

    invoke-direct {p0, v0, p1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a(ILandroid/graphics/Canvas;)V

    .line 764
    :cond_0
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->k:I

    iget v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->j:I

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->k:I

    iget v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->m:I

    if-eq v0, v2, :cond_1

    .line 765
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->k:I

    invoke-direct {p0, v0, p1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a(ILandroid/graphics/Canvas;)V

    .line 769
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 771
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v7

    .line 772
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v8

    .line 774
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->b:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 776
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getWidth()I

    move-result v2

    .line 777
    if-gez v0, :cond_2

    .line 778
    neg-int v0, v0

    .line 780
    :cond_2
    if-ge v0, v2, :cond_4

    .line 781
    sub-int v0, v2, v0

    int-to-float v0, v0

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 782
    mul-float/2addr v0, v0

    .line 787
    :goto_0
    const/high16 v2, 0x437f0000    # 255.0f

    iget v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->h:F

    mul-float/2addr v2, v3

    mul-float/2addr v0, v2

    float-to-int v5, v0

    .line 789
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 791
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->b:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->b:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 792
    invoke-virtual {p1, v4, v4, v7, v8}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 795
    int-to-float v3, v7

    int-to-float v4, v8

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 798
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v2, v7

    int-to-float v3, v8

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 801
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 802
    const/high16 v2, -0x10000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 803
    invoke-virtual {p1, v0, v9, v9, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 806
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 808
    invoke-virtual {p1, v0, v1, v6}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    .line 812
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 813
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 814
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 816
    :cond_3
    return-void

    :cond_4
    move v0, v1

    .line 784
    goto :goto_0
.end method

.method public getFloatAlpha()F
    .locals 1

    .prologue
    .line 550
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->h:F

    return v0
.end method

.method public getInputAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 603
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->ab:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$a;

    if-nez v0, :cond_0

    .line 604
    const/4 v0, 0x0

    .line 606
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->ab:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$a;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$a;->a()Landroid/widget/ListAdapter;

    move-result-object v0

    goto :goto_0
.end method

.method public isDragEnabled()Z
    .locals 1

    .prologue
    .line 2479
    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->u:Z

    return v0
.end method

.method protected layoutChildren()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2121
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 2123
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2124
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->e:Z

    if-nez v0, :cond_0

    .line 2128
    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->g()V

    .line 2130
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 2131
    iput-boolean v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->e:Z

    .line 2133
    :cond_1
    return-void
.end method

.method public listViewIntercepted()Z
    .locals 1

    .prologue
    .line 1676
    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->ak:Z

    return v0
.end method

.method public moveCheckState(II)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 2616
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v3

    .line 2619
    if-ge p2, p1, :cond_3

    move v0, p1

    move v1, p2

    .line 2623
    :goto_0
    add-int/lit8 v4, v0, 0x1

    .line 2625
    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    new-array v5, v0, [I

    .line 2626
    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    new-array v6, v0, [I

    .line 2627
    invoke-static {v3, v1, v4, v5, v6}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a(Landroid/util/SparseBooleanArray;II[I[I)I

    move-result v3

    .line 2628
    if-ne v3, v8, :cond_1

    aget v0, v5, v2

    aget v7, v6, v2

    if-ne v0, v7, :cond_1

    .line 2646
    :cond_0
    return-void

    .line 2634
    :cond_1
    if-ge p1, p2, :cond_2

    move v0, v2

    .line 2635
    :goto_1
    if-eq v0, v3, :cond_0

    .line 2636
    aget v7, v5, v0

    invoke-static {v7, v1, v4}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a(III)I

    move-result v7

    invoke-virtual {p0, v7, v8}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->setItemChecked(IZ)V

    .line 2637
    aget v7, v6, v0

    invoke-static {v7, v1, v4}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a(III)I

    move-result v7

    invoke-virtual {p0, v7, v2}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->setItemChecked(IZ)V

    .line 2635
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v2

    .line 2641
    :goto_2
    if-eq v0, v3, :cond_0

    .line 2642
    aget v1, v5, v0

    invoke-virtual {p0, v1, v2}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->setItemChecked(IZ)V

    .line 2643
    aget v1, v6, v0

    invoke-virtual {p0, v1, v8}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->setItemChecked(IZ)V

    .line 2641
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    move v0, p2

    move v1, p1

    goto :goto_0
.end method

.method public moveItem(II)V
    .locals 1

    .prologue
    .line 1445
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->s:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$DropListener;

    if-eqz v0, :cond_0

    .line 1446
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getInputAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 1447
    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    if-ltz p2, :cond_0

    if-ge p2, v0, :cond_0

    .line 1448
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->s:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$DropListener;

    invoke-interface {v0, p1, p2}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$DropListener;->a(II)V

    .line 1451
    :cond_0
    return-void
.end method

.method protected onDragTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/4 v1, 0x4

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 2137
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2139
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    .line 2158
    :cond_0
    :goto_0
    return v4

    .line 2141
    :pswitch_0
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->v:I

    if-ne v0, v1, :cond_1

    .line 2142
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->cancelDrag()V

    .line 2144
    :cond_1
    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->d()V

    goto :goto_0

    .line 2148
    :pswitch_1
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->v:I

    if-ne v0, v1, :cond_2

    .line 2149
    invoke-virtual {p0, v6}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->stopDrag(Z)Z

    .line 2151
    :cond_2
    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->d()V

    goto :goto_0

    .line 2154
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->b:Landroid/graphics/Point;

    iget v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->n:I

    sub-int/2addr v0, v3

    iput v0, v2, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->b:Landroid/graphics/Point;

    iget v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->o:I

    sub-int v2, v1, v2

    iput v2, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v4}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a(Z)V

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->d:I

    iget v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->y:I

    add-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->d:I

    iget v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->y:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->B:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;

    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->b()I

    move-result v2

    iget v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->P:I

    if-le v0, v3, :cond_4

    iget v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->F:I

    if-le v0, v3, :cond_4

    if-eq v2, v4, :cond_4

    if-eq v2, v5, :cond_3

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->B:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->c()V

    :cond_3
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->B:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;

    invoke-virtual {v0, v4}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->a(I)V

    goto :goto_0

    :cond_4
    iget v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->P:I

    if-ge v1, v3, :cond_6

    iget v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->E:I

    if-ge v1, v3, :cond_6

    if-eqz v2, :cond_6

    if-eq v2, v5, :cond_5

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->B:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->c()V

    :cond_5
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->B:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;

    invoke-virtual {v0, v6}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->a(I)V

    goto :goto_0

    :cond_6
    iget v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->E:I

    if-lt v1, v2, :cond_0

    iget v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->F:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->B:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->B:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->c()V

    goto/16 :goto_0

    .line 2139
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 1109
    invoke-super {p0, p1}, Landroid/widget/ListView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1114
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 1683
    iget-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->u:Z

    if-nez v1, :cond_0

    .line 1684
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1731
    :goto_0
    return v0

    .line 1687
    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a(Landroid/view/MotionEvent;)V

    .line 1688
    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->S:Z

    .line 1690
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v3, v1, 0xff

    .line 1692
    if-nez v3, :cond_2

    .line 1693
    iget v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->v:I

    if-eqz v1, :cond_1

    .line 1695
    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->ad:Z

    goto :goto_0

    .line 1698
    :cond_1
    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->T:Z

    .line 1704
    :cond_2
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a:Landroid/view/View;

    if-eqz v1, :cond_5

    move v1, v0

    .line 1727
    :goto_1
    if-eq v3, v0, :cond_3

    const/4 v0, 0x3

    if-ne v3, v0, :cond_4

    .line 1728
    :cond_3
    iput-boolean v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->T:Z

    :cond_4
    move v0, v1

    .line 1731
    goto :goto_0

    .line 1708
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1709
    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->ak:Z

    move v1, v0

    .line 1713
    :goto_2
    packed-switch v3, :pswitch_data_0

    .line 1719
    :pswitch_0
    if-eqz v1, :cond_6

    .line 1720
    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->W:I

    goto :goto_1

    .line 1716
    :pswitch_1
    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->d()V

    goto :goto_1

    .line 1722
    :cond_6
    const/4 v4, 0x2

    iput v4, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->W:I

    goto :goto_1

    :cond_7
    move v1, v2

    goto :goto_2

    .line 1713
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 1

    .prologue
    .line 2108
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    .line 2110
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2111
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2112
    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->g()V

    .line 2114
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->e:Z

    .line 2116
    :cond_1
    iput p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->z:I

    .line 2117
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .prologue
    .line 1837
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->onSizeChanged(IIII)V

    .line 1838
    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->e()V

    .line 1839
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1598
    iget-boolean v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->ad:Z

    if-eqz v2, :cond_1

    .line 1599
    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->ad:Z

    .line 1645
    :cond_0
    :goto_0
    return v0

    .line 1603
    :cond_1
    iget-boolean v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->u:Z

    if-nez v2, :cond_2

    .line 1604
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 1609
    :cond_2
    iget-boolean v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->S:Z

    .line 1610
    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->S:Z

    .line 1612
    if-nez v2, :cond_3

    .line 1613
    invoke-direct {p0, p1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a(Landroid/view/MotionEvent;)V

    .line 1617
    :cond_3
    iget v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->v:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    .line 1618
    invoke-virtual {p0, p1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->onDragTouchEvent(Landroid/view/MotionEvent;)Z

    move v0, v1

    .line 1619
    goto :goto_0

    .line 1625
    :cond_4
    iget v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->v:I

    if-nez v2, :cond_5

    .line 1626
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v0, v1

    .line 1631
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 1633
    packed-switch v2, :pswitch_data_0

    .line 1639
    :pswitch_0
    if-eqz v0, :cond_0

    .line 1640
    iput v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->W:I

    goto :goto_0

    .line 1636
    :pswitch_1
    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->d()V

    goto :goto_0

    .line 1633
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public removeCheckState(I)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 2662
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    .line 2664
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 2680
    :cond_0
    return-void

    .line 2666
    :cond_1
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    new-array v2, v2, [I

    .line 2667
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    new-array v3, v3, [I

    .line 2668
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    .line 2670
    invoke-static {v0, p1, v4, v2, v3}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a(Landroid/util/SparseBooleanArray;II[I[I)I

    move-result v5

    move v0, v1

    .line 2671
    :goto_0
    if-eq v0, v5, :cond_0

    .line 2672
    aget v6, v2, v0

    if-eq v6, p1, :cond_3

    aget v6, v3, v0

    aget v7, v2, v0

    if-ge v6, v7, :cond_2

    aget v6, v3, v0

    if-gt v6, p1, :cond_3

    .line 2676
    :cond_2
    aget v6, v2, v0

    invoke-static {v6, p1, v4}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a(III)I

    move-result v6

    const/4 v7, 0x1

    invoke-virtual {p0, v6, v7}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->setItemChecked(IZ)V

    .line 2678
    :cond_3
    aget v6, v3, v0

    invoke-static {v6, p1, v4}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a(III)I

    move-result v6

    invoke-virtual {p0, v6, v1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->setItemChecked(IZ)V

    .line 2671
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public removeItem(I)V
    .locals 1

    .prologue
    .line 1387
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->ai:Z

    .line 1388
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->removeItem(IF)V

    .line 1389
    return-void
.end method

.method public removeItem(IF)V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 1399
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->v:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->v:I

    if-ne v0, v2, :cond_3

    .line 1401
    :cond_0
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->v:I

    if-nez v0, :cond_1

    .line 1403
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getHeaderViewsCount()I

    move-result v0

    add-int/2addr v0, p1

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->m:I

    .line 1404
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->m:I

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->j:I

    .line 1405
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->m:I

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->k:I

    .line 1406
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->m:I

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->i:I

    .line 1407
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->m:I

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1408
    if-eqz v0, :cond_1

    .line 1409
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1413
    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->v:I

    .line 1414
    iput p2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->aj:F

    .line 1416
    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->T:Z

    if-eqz v0, :cond_2

    .line 1417
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->W:I

    packed-switch v0, :pswitch_data_0

    .line 1427
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->af:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$f;

    if-eqz v0, :cond_4

    .line 1428
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->af:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$f;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$f;->c()V

    .line 1433
    :cond_3
    :goto_1
    return-void

    .line 1419
    :pswitch_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->V:Landroid/view/MotionEvent;

    invoke-super {p0, v0}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 1422
    :pswitch_1
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->V:Landroid/view/MotionEvent;

    invoke-super {p0, v0}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 1430
    :cond_4
    invoke-direct {p0, p1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->b(I)V

    goto :goto_1

    .line 1417
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 2033
    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->ac:Z

    if-nez v0, :cond_0

    .line 2034
    invoke-super {p0}, Landroid/widget/ListView;->requestLayout()V

    .line 2036
    :cond_0
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .prologue
    .line 64
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    .prologue
    .line 575
    if-eqz p1, :cond_3

    .line 576
    new-instance v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$a;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$a;-><init>(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;Landroid/widget/ListAdapter;)V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->ab:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$a;

    .line 577
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->f:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 579
    instance-of v0, p1, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$DropListener;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 580
    check-cast v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$DropListener;

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->setDropListener(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$DropListener;)V

    .line 582
    :cond_0
    instance-of v0, p1, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$DragListener;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 583
    check-cast v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$DragListener;

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->setDragListener(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$DragListener;)V

    .line 585
    :cond_1
    instance-of v0, p1, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$RemoveListener;

    if-eqz v0, :cond_2

    .line 586
    check-cast p1, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$RemoveListener;

    invoke-virtual {p0, p1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->setRemoveListener(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$RemoveListener;)V

    .line 592
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->ab:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$a;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 593
    return-void

    .line 589
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->ab:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$a;

    goto :goto_0
.end method

.method public setDragEnabled(Z)V
    .locals 0

    .prologue
    .line 2475
    iput-boolean p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->u:Z

    .line 2476
    return-void
.end method

.method public setDragListener(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$DragListener;)V
    .locals 0

    .prologue
    .line 2461
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->r:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$DragListener;

    .line 2462
    return-void
.end method

.method public setDragScrollProfile(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$DragScrollProfile;)V
    .locals 0

    .prologue
    .line 2558
    if-eqz p1, :cond_0

    .line 2559
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->L:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$DragScrollProfile;

    .line 2561
    :cond_0
    return-void
.end method

.method public setDragScrollStart(F)V
    .locals 0

    .prologue
    .line 1743
    invoke-virtual {p0, p1, p1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->setDragScrollStarts(FF)V

    .line 1744
    return-void
.end method

.method public setDragScrollStarts(FF)V
    .locals 2

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 1757
    cmpl-float v0, p2, v1

    if-lez v0, :cond_1

    .line 1758
    iput v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->D:F

    .line 1763
    :goto_0
    cmpl-float v0, p1, v1

    if-lez v0, :cond_2

    .line 1764
    iput v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->C:F

    .line 1769
    :goto_1
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getHeight()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1770
    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->e()V

    .line 1772
    :cond_0
    return-void

    .line 1760
    :cond_1
    iput p2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->D:F

    goto :goto_0

    .line 1766
    :cond_2
    iput p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->C:F

    goto :goto_1
.end method

.method public setDragSortListener(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$DragSortListener;)V
    .locals 0

    .prologue
    .line 2545
    invoke-virtual {p0, p1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->setDropListener(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$DropListener;)V

    .line 2546
    invoke-virtual {p0, p1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->setDragListener(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$DragListener;)V

    .line 2547
    invoke-virtual {p0, p1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->setRemoveListener(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$RemoveListener;)V

    .line 2548
    return-void
.end method

.method public setDropListener(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$DropListener;)V
    .locals 0

    .prologue
    .line 2495
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->s:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$DropListener;

    .line 2496
    return-void
.end method

.method public setFloatAlpha(F)V
    .locals 0

    .prologue
    .line 546
    iput p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->h:F

    .line 547
    return-void
.end method

.method public setFloatViewManager(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$FloatViewManager;)V
    .locals 0

    .prologue
    .line 2457
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->U:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$FloatViewManager;

    .line 2458
    return-void
.end method

.method public setMaxScrollSpeed(F)V
    .locals 0

    .prologue
    .line 560
    iput p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->K:F

    .line 561
    return-void
.end method

.method public setRemoveListener(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$RemoveListener;)V
    .locals 0

    .prologue
    .line 2509
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->t:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$RemoveListener;

    .line 2510
    return-void
.end method

.method public startDrag(IIII)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 2191
    iget-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->T:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->U:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$FloatViewManager;

    if-nez v1, :cond_1

    .line 2200
    :cond_0
    :goto_0
    return v0

    .line 2195
    :cond_1
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->U:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$FloatViewManager;

    invoke-interface {v1, p1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$FloatViewManager;->a(I)Landroid/view/View;

    move-result-object v2

    .line 2197
    if-eqz v2, :cond_0

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 2200
    invoke-virtual/range {v0 .. v5}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->startDrag(ILandroid/view/View;III)Z

    move-result v0

    goto :goto_0
.end method

.method public startDrag(ILandroid/view/View;III)Z
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2228
    iget v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->v:I

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->T:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a:Landroid/view/View;

    if-nez v2, :cond_0

    if-eqz p2, :cond_0

    iget-boolean v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->u:Z

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    .line 2287
    :cond_1
    :goto_0
    return v0

    .line 2233
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 2234
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2237
    :cond_3
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getHeaderViewsCount()I

    move-result v2

    add-int/2addr v2, p1

    .line 2238
    iput v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->j:I

    .line 2239
    iput v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->k:I

    .line 2240
    iput v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->m:I

    .line 2241
    iput v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->i:I

    .line 2244
    iput v4, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->v:I

    .line 2245
    iput v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->R:I

    .line 2246
    iget v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->R:I

    or-int/2addr v1, p3

    iput v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->R:I

    .line 2248
    iput-object p2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a:Landroid/view/View;

    .line 2249
    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->g()V

    .line 2251
    iput p4, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->n:I

    .line 2252
    iput p5, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->o:I

    .line 2253
    iget v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->N:I

    iput v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->Q:I

    .line 2256
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->b:Landroid/graphics/Point;

    iget v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->M:I

    iget v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->n:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 2257
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->b:Landroid/graphics/Point;

    iget v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->N:I

    iget v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->o:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 2260
    iget v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->m:I

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2262
    if-eqz v1, :cond_4

    .line 2263
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2272
    :cond_4
    iget v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->W:I

    packed-switch v1, :pswitch_data_0

    .line 2281
    :goto_1
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->requestLayout()V

    .line 2283
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->ag:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$e;

    if-eqz v1, :cond_1

    .line 2284
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->ag:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$e;

    invoke-virtual {v1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$e;->c()V

    goto :goto_0

    .line 2274
    :pswitch_0
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->V:Landroid/view/MotionEvent;

    invoke-super {p0, v1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 2277
    :pswitch_1
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->V:Landroid/view/MotionEvent;

    invoke-super {p0, v1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 2272
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public stopDrag(Z)Z
    .locals 1

    .prologue
    .line 1561
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->ai:Z

    .line 1562
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->stopDrag(ZF)Z

    move-result v0

    return v0
.end method

.method public stopDrag(ZF)Z
    .locals 2

    .prologue
    .line 1572
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->a:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1573
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->B:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->c()V

    .line 1575
    if-eqz p1, :cond_0

    .line 1576
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->m:I

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0, p2}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->removeItem(IF)V

    .line 1589
    :goto_0
    const/4 v0, 0x1

    .line 1592
    :goto_1
    return v0

    .line 1578
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->ah:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;

    if-eqz v0, :cond_1

    .line 1579
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->ah:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$c;->c()V

    goto :goto_0

    .line 1581
    :cond_1
    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->b()V

    goto :goto_0

    .line 1592
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public stopDragWithVelocity(ZF)Z
    .locals 1

    .prologue
    .line 1567
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->ai:Z

    .line 1568
    invoke-virtual {p0, p1, p2}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->stopDrag(ZF)Z

    move-result v0

    return v0
.end method
