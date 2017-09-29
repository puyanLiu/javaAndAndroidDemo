.class public Lcom/alipay/mobile/emotion/drag/DragSortListView;
.super Landroid/widget/ListView;
.source "DragSortListView.java"


# static fields
.field private static final DRAGGING:I = 0x4

.field public static final DRAG_NEG_X:I = 0x2

.field public static final DRAG_NEG_Y:I = 0x8

.field public static final DRAG_POS_X:I = 0x1

.field public static final DRAG_POS_Y:I = 0x4

.field private static final DROPPING:I = 0x2

.field private static final IDLE:I = 0x0

.field private static final NO_CANCEL:I = 0x0

.field private static final ON_INTERCEPT_TOUCH_EVENT:I = 0x2

.field private static final ON_TOUCH_EVENT:I = 0x1

.field private static final REMOVING:I = 0x1

.field private static final STOPPED:I = 0x3

.field private static final sCacheSize:I = 0x3


# instance fields
.field private mAdapterWrapper:Lcom/alipay/mobile/emotion/drag/DragSortListView$AdapterWrapper;

.field private mBlockLayoutRequests:Z

.field private mCancelEvent:Landroid/view/MotionEvent;

.field private mCancelMethod:I

.field private mChildHeightCache:Lcom/alipay/mobile/emotion/drag/DragSortListView$HeightCache;

.field private mCurrFloatAlpha:F

.field private mDownScrollStartY:I

.field private mDownScrollStartYF:F

.field private mDragDeltaX:I

.field private mDragDeltaY:I

.field private mDragDownScrollHeight:F

.field private mDragDownScrollStartFrac:F

.field private mDragFlags:I

.field private mDragListener:Lcom/alipay/mobile/emotion/drag/DragSortListView$DragListener;

.field private mDragScroller:Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScroller;

.field private mDragStartY:I

.field private mDragState:I

.field private mDragUpScrollHeight:F

.field private mDragUpScrollStartFrac:F

.field private mDropAnimator:Lcom/alipay/mobile/emotion/drag/DragSortListView$DropAnimator;

.field private mDropListener:Lcom/alipay/mobile/emotion/drag/DragSortListView$DropListener;

.field private mFirstExpPos:I

.field private mFloatAlpha:F

.field private mFloatLoc:Landroid/graphics/Point;

.field private mFloatPos:I

.field private mFloatView:Landroid/view/View;

.field private mFloatViewHeight:I

.field private mFloatViewHeightHalf:I

.field private mFloatViewManager:Lcom/alipay/mobile/emotion/drag/DragSortListView$FloatViewManager;

.field private mFloatViewMid:I

.field private mFloatViewOnMeasured:Z

.field private mIgnoreTouchEvent:Z

.field private mInTouchEvent:Z

.field private mItemHeightCollapsed:I

.field private mLastCallWasIntercept:Z

.field private mLastX:I

.field private mLastY:I

.field private mListViewIntercepted:Z

.field private mMaxScrollSpeed:F

.field private mObserver:Landroid/database/DataSetObserver;

.field private mOffsetX:I

.field private mOffsetY:I

.field private mSampleViewTypes:[Landroid/view/View;

.field private mScrollProfile:Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScrollProfile;

.field private mSecondExpPos:I

.field private mSrcPos:I

.field private mTouchLoc:Landroid/graphics/Point;

.field private mUpScrollStartY:I

.field private mUpScrollStartYF:F

.field private mWidthMeasureSpec:I

.field private mX:I

.field private mY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 15

    .prologue
    .line 366
    invoke-direct/range {p0 .. p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    .line 67
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mTouchLoc:Landroid/graphics/Point;

    .line 77
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFloatViewOnMeasured:Z

    .line 88
    const v1, 0x3f19999a    # 0.6f

    iput v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFloatAlpha:F

    .line 89
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mCurrFloatAlpha:F

    .line 159
    const/4 v1, 0x0

    iput v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mDragState:I

    .line 165
    const/4 v1, 0x1

    iput v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mItemHeightCollapsed:I

    .line 181
    const/4 v1, 0x0

    iput v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mWidthMeasureSpec:I

    .line 187
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/View;

    iput-object v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    .line 199
    const v1, 0x3eaaaaab

    iput v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mDragUpScrollStartFrac:F

    .line 206
    const v1, 0x3eaaaaab

    iput v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mDragDownScrollStartFrac:F

    .line 230
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mMaxScrollSpeed:F

    .line 237
    new-instance v1, Lcom/alipay/mobile/emotion/drag/DragSortListView$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView$1;-><init>(Lcom/alipay/mobile/emotion/drag/DragSortListView;)V

    iput-object v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mScrollProfile:Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScrollProfile;

    .line 299
    const/4 v1, 0x0

    iput v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mDragFlags:I

    .line 304
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mLastCallWasIntercept:Z

    .line 309
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mInTouchEvent:Z

    .line 314
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFloatViewManager:Lcom/alipay/mobile/emotion/drag/DragSortListView$FloatViewManager;

    .line 331
    const/4 v1, 0x0

    iput v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mCancelMethod:I

    .line 343
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mBlockLayoutRequests:Z

    .line 349
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mIgnoreTouchEvent:Z

    .line 361
    new-instance v1, Lcom/alipay/mobile/emotion/drag/DragSortListView$HeightCache;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/alipay/mobile/emotion/drag/DragSortListView$HeightCache;-><init>(Lcom/alipay/mobile/emotion/drag/DragSortListView;I)V

    iput-object v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mChildHeightCache:Lcom/alipay/mobile/emotion/drag/DragSortListView$HeightCache;

    .line 1261
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mListViewIntercepted:Z

    .line 368
    if-eqz p2, :cond_0

    .line 371
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/phone/emotion/R$styleable;->EmoiDragSortListView:[I

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 372
    iget v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFloatAlpha:F

    iput v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mCurrFloatAlpha:F

    .line 374
    iget v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mDragUpScrollStartFrac:F

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->setDragScrollStart(F)V

    .line 376
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v8, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 378
    new-instance v1, Lcom/alipay/mobile/emotion/drag/DragSortController;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/alipay/mobile/emotion/drag/DragSortController;-><init>(Lcom/alipay/mobile/emotion/drag/DragSortListView;IIIII)V

    .line 379
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/emotion/drag/DragSortController;->setBackgroundColor(I)V

    .line 381
    iput-object v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFloatViewManager:Lcom/alipay/mobile/emotion/drag/DragSortListView$FloatViewManager;

    .line 382
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 384
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 387
    :cond_0
    new-instance v1, Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScroller;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScroller;-><init>(Lcom/alipay/mobile/emotion/drag/DragSortListView;)V

    iput-object v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mDragScroller:Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScroller;

    .line 389
    new-instance v1, Lcom/alipay/mobile/emotion/drag/DragSortListView$DropAnimator;

    const/high16 v2, 0x3f000000    # 0.5f

    const/16 v3, 0x96

    invoke-direct {v1, p0, v2, v3}, Lcom/alipay/mobile/emotion/drag/DragSortListView$DropAnimator;-><init>(Lcom/alipay/mobile/emotion/drag/DragSortListView;FI)V

    iput-object v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mDropAnimator:Lcom/alipay/mobile/emotion/drag/DragSortListView$DropAnimator;

    .line 392
    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v1 .. v14}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    .line 395
    new-instance v1, Lcom/alipay/mobile/emotion/drag/DragSortListView$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView$2;-><init>(Lcom/alipay/mobile/emotion/drag/DragSortListView;)V

    iput-object v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mObserver:Landroid/database/DataSetObserver;

    .line 412
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/emotion/drag/DragSortListView;)F
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mMaxScrollSpeed:F

    return v0
.end method

.method static synthetic access$1(Lcom/alipay/mobile/emotion/drag/DragSortListView;ILandroid/view/View;Z)V
    .locals 0

    .prologue
    .line 1451
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->adjustItem(ILandroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$10(Lcom/alipay/mobile/emotion/drag/DragSortListView;)I
    .locals 1

    .prologue
    .line 252
    iget v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mY:I

    return v0
.end method

.method static synthetic access$11(Lcom/alipay/mobile/emotion/drag/DragSortListView;)I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFloatViewMid:I

    return v0
.end method

.method static synthetic access$12(Lcom/alipay/mobile/emotion/drag/DragSortListView;)I
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFloatViewHeightHalf:I

    return v0
.end method

.method static synthetic access$13(Lcom/alipay/mobile/emotion/drag/DragSortListView;)Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScrollProfile;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mScrollProfile:Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScrollProfile;

    return-object v0
.end method

.method static synthetic access$14(Lcom/alipay/mobile/emotion/drag/DragSortListView;)F
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mUpScrollStartYF:F

    return v0
.end method

.method static synthetic access$15(Lcom/alipay/mobile/emotion/drag/DragSortListView;)F
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mDragUpScrollHeight:F

    return v0
.end method

.method static synthetic access$16(Lcom/alipay/mobile/emotion/drag/DragSortListView;)F
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mDownScrollStartYF:F

    return v0
.end method

.method static synthetic access$17(Lcom/alipay/mobile/emotion/drag/DragSortListView;)F
    .locals 1

    .prologue
    .line 224
    iget v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mDragDownScrollHeight:F

    return v0
.end method

.method static synthetic access$18(Lcom/alipay/mobile/emotion/drag/DragSortListView;Z)V
    .locals 0

    .prologue
    .line 343
    iput-boolean p1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mBlockLayoutRequests:Z

    return-void
.end method

.method static synthetic access$19(Lcom/alipay/mobile/emotion/drag/DragSortListView;ILandroid/view/View;Z)V
    .locals 0

    .prologue
    .line 1870
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->doDragFloatView(ILandroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$2(Lcom/alipay/mobile/emotion/drag/DragSortListView;)I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFloatPos:I

    return v0
.end method

.method static synthetic access$20(Lcom/alipay/mobile/emotion/drag/DragSortListView;)I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mDragState:I

    return v0
.end method

.method static synthetic access$3(Lcom/alipay/mobile/emotion/drag/DragSortListView;)I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mSrcPos:I

    return v0
.end method

.method static synthetic access$4(Lcom/alipay/mobile/emotion/drag/DragSortListView;I)V
    .locals 0

    .prologue
    .line 159
    iput p1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mDragState:I

    return-void
.end method

.method static synthetic access$5(Lcom/alipay/mobile/emotion/drag/DragSortListView;)Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$6(Lcom/alipay/mobile/emotion/drag/DragSortListView;)I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mItemHeightCollapsed:I

    return v0
.end method

.method static synthetic access$7(Lcom/alipay/mobile/emotion/drag/DragSortListView;)I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFloatViewHeight:I

    return v0
.end method

.method static synthetic access$8(Lcom/alipay/mobile/emotion/drag/DragSortListView;Z)V
    .locals 0

    .prologue
    .line 1859
    invoke-direct {p0, p1}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->doDragFloatView(Z)V

    return-void
.end method

.method static synthetic access$9(Lcom/alipay/mobile/emotion/drag/DragSortListView;)V
    .locals 0

    .prologue
    .line 1106
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->dropFloatView()V

    return-void
.end method

.method private adjustAllItems()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1425
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getFirstVisiblePosition()I

    move-result v1

    .line 1426
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getLastVisiblePosition()I

    move-result v2

    .line 1428
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getHeaderViewsCount()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1429
    sub-int/2addr v2, v1

    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getFooterViewsCount()I

    move-result v4

    sub-int/2addr v3, v4

    .line 1430
    sub-int/2addr v3, v1

    .line 1429
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1432
    :goto_0
    if-le v0, v2, :cond_0

    .line 1438
    return-void

    .line 1433
    :cond_0
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1434
    if-eqz v3, :cond_1

    .line 1435
    add-int v4, v1, v0

    invoke-direct {p0, v4, v3, v5}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->adjustItem(ILandroid/view/View;Z)V

    .line 1432
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private adjustItem(I)V
    .locals 2

    .prologue
    .line 1441
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1443
    if-eqz v0, :cond_0

    .line 1444
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->adjustItem(ILandroid/view/View;Z)V

    .line 1446
    :cond_0
    return-void
.end method

.method private adjustItem(ILandroid/view/View;Z)V
    .locals 3

    .prologue
    .line 1454
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1456
    iget v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mSrcPos:I

    if-eq p1, v0, :cond_5

    iget v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFirstExpPos:I

    if-eq p1, v0, :cond_5

    .line 1457
    iget v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mSecondExpPos:I

    if-eq p1, v0, :cond_5

    .line 1458
    const/4 v0, -0x2

    .line 1463
    :goto_0
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v0, v2, :cond_0

    .line 1464
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1465
    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1469
    :cond_0
    iget v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFirstExpPos:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mSecondExpPos:I

    if-ne p1, v0, :cond_2

    .line 1470
    :cond_1
    iget v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mSrcPos:I

    if-ge p1, v0, :cond_6

    move-object v0, p2

    .line 1471
    check-cast v0, Lcom/alipay/mobile/emotion/drag/DragSortItemView;

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/emotion/drag/DragSortItemView;->setGravity(I)V

    .line 1479
    :cond_2
    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v1

    .line 1480
    const/4 v0, 0x0

    .line 1482
    iget v2, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mSrcPos:I

    if-ne p1, v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 1483
    const/4 v0, 0x4

    .line 1486
    :cond_3
    if-eq v0, v1, :cond_4

    .line 1487
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1489
    :cond_4
    return-void

    .line 1460
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->calcItemHeight(ILandroid/view/View;Z)I

    move-result v0

    goto :goto_0

    .line 1472
    :cond_6
    iget v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mSrcPos:I

    if-le p1, v0, :cond_2

    move-object v0, p2

    .line 1473
    check-cast v0, Lcom/alipay/mobile/emotion/drag/DragSortItemView;

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/emotion/drag/DragSortItemView;->setGravity(I)V

    goto :goto_1
.end method

.method private adjustOnReorder()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1131
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getFirstVisiblePosition()I

    move-result v1

    .line 1133
    iget v2, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mSrcPos:I

    if-ge v2, v1, :cond_1

    .line 1136
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1138
    if-eqz v2, :cond_0

    .line 1139
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v0

    .line 1142
    :cond_0
    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->setSelectionFromTop(II)V

    .line 1144
    :cond_1
    return-void
.end method

.method private adjustScroll(ILandroid/view/View;II)I
    .locals 8

    .prologue
    .line 1615
    const/4 v4, 0x0

    .line 1617
    invoke-direct {p0, p1}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getChildHeight(I)I

    move-result v0

    .line 1619
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1620
    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->calcItemHeight(II)I

    move-result v1

    .line 1624
    iget v2, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mSrcPos:I

    if-eq p1, v2, :cond_7

    .line 1625
    sub-int v2, v3, v0

    .line 1626
    sub-int v0, v1, v0

    .line 1629
    :goto_0
    iget v5, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFloatViewHeight:I

    .line 1630
    iget v6, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mSrcPos:I

    iget v7, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFirstExpPos:I

    if-eq v6, v7, :cond_0

    iget v6, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mSrcPos:I

    iget v7, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mSecondExpPos:I

    if-eq v6, v7, :cond_0

    .line 1631
    iget v6, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mItemHeightCollapsed:I

    sub-int/2addr v5, v6

    .line 1634
    :cond_0
    if-gt p1, p3, :cond_1

    .line 1635
    iget v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFirstExpPos:I

    if-le p1, v1, :cond_6

    .line 1636
    sub-int v0, v5, v0

    add-int/lit8 v0, v0, 0x0

    .line 1654
    :goto_1
    return v0

    .line 1638
    :cond_1
    if-ne p1, p4, :cond_4

    .line 1639
    iget v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFirstExpPos:I

    if-gt p1, v0, :cond_2

    .line 1640
    sub-int v0, v2, v5

    add-int/lit8 v0, v0, 0x0

    goto :goto_1

    .line 1641
    :cond_2
    iget v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mSecondExpPos:I

    if-ne p1, v0, :cond_3

    .line 1642
    sub-int v0, v3, v1

    add-int/lit8 v0, v0, 0x0

    goto :goto_1

    .line 1644
    :cond_3
    add-int/lit8 v0, v2, 0x0

    goto :goto_1

    .line 1647
    :cond_4
    iget v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFirstExpPos:I

    if-gt p1, v1, :cond_5

    .line 1648
    rsub-int/lit8 v0, v5, 0x0

    goto :goto_1

    .line 1649
    :cond_5
    iget v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mSecondExpPos:I

    if-ne p1, v1, :cond_6

    .line 1650
    rsub-int/lit8 v0, v0, 0x0

    goto :goto_1

    :cond_6
    move v0, v4

    goto :goto_1

    :cond_7
    move v0, v1

    move v2, v3

    goto :goto_0
.end method

.method private static buildRunList(Landroid/util/SparseBooleanArray;II[I[I)I
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 2219
    .line 2221
    invoke-static {p0, p1, p2}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->findFirstSetIndex(Landroid/util/SparseBooleanArray;II)I

    move-result v2

    .line 2222
    const/4 v0, -0x1

    if-ne v2, v0, :cond_0

    .line 2263
    :goto_0
    return v5

    .line 2225
    :cond_0
    invoke-virtual {p0, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    .line 2227
    add-int/lit8 v0, v1, 0x1

    move v4, v5

    .line 2228
    :goto_1
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-ge v3, v2, :cond_1

    invoke-virtual {p0, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    if-lt v2, p2, :cond_4

    .line 2242
    :cond_1
    if-ne v0, p2, :cond_2

    move v0, p1

    .line 2249
    :cond_2
    aput v1, p3, v4

    .line 2250
    aput v0, p4, v4

    .line 2251
    add-int/lit8 v0, v4, 0x1

    .line 2253
    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    .line 2254
    aget v1, p3, v5

    if-ne v1, p1, :cond_3

    add-int/lit8 v1, v0, -0x1

    aget v1, p4, v1

    if-ne v1, p1, :cond_3

    .line 2259
    add-int/lit8 v1, v0, -0x1

    aget v1, p3, v1

    aput v1, p3, v5

    .line 2260
    add-int/lit8 v0, v0, -0x1

    :cond_3
    move v5, v0

    .line 2263
    goto :goto_0

    .line 2229
    :cond_4
    invoke-virtual {p0, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 2230
    if-ne v2, v0, :cond_5

    .line 2232
    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_1

    .line 2234
    :cond_5
    aput v1, p3, v4

    .line 2235
    aput v0, p4, v4

    .line 2236
    add-int/lit8 v1, v4, 0x1

    .line 2238
    add-int/lit8 v0, v2, 0x1

    move v4, v1

    move v1, v2

    move v2, v3

    goto :goto_1

    :cond_6
    move v2, v3

    goto :goto_1
.end method

.method private calcItemHeight(II)I
    .locals 2

    .prologue
    .line 1581
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getDividerHeight()I

    .line 1582
    iget v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFloatViewHeight:I

    iget v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mItemHeightCollapsed:I

    sub-int/2addr v0, v1

    .line 1585
    iget v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mSrcPos:I

    if-ne p1, v1, :cond_3

    .line 1586
    iget v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mSrcPos:I

    iget v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFirstExpPos:I

    if-ne v0, v1, :cond_1

    .line 1587
    iget p2, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFloatViewHeight:I

    .line 1603
    :cond_0
    :goto_0
    return p2

    .line 1588
    :cond_1
    iget v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mSrcPos:I

    iget v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mSecondExpPos:I

    if-ne v0, v1, :cond_2

    .line 1590
    iget p2, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFloatViewHeight:I

    goto :goto_0

    .line 1592
    :cond_2
    iget p2, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mItemHeightCollapsed:I

    goto :goto_0

    .line 1594
    :cond_3
    iget v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFirstExpPos:I

    if-ne p1, v1, :cond_4

    .line 1595
    add-int/2addr p2, v0

    goto :goto_0

    .line 1596
    :cond_4
    iget v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mSecondExpPos:I

    if-ne p1, v1, :cond_0

    .line 1598
    add-int/2addr p2, v0

    goto :goto_0
.end method

.method private calcItemHeight(ILandroid/view/View;Z)I
    .locals 1

    .prologue
    .line 1576
    .line 1577
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getChildHeight(ILandroid/view/View;Z)I

    move-result v0

    .line 1576
    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->calcItemHeight(II)I

    move-result v0

    return v0
.end method

.method private clearPositions()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 1100
    iput v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mSrcPos:I

    .line 1101
    iput v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFirstExpPos:I

    .line 1102
    iput v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mSecondExpPos:I

    .line 1103
    iput v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFloatPos:I

    .line 1104
    return-void
.end method

.method private continueDrag(II)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 1358
    iget-object v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mDragDeltaX:I

    sub-int v1, p1, v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 1359
    iget-object v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mDragDeltaY:I

    sub-int v1, p2, v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 1361
    invoke-direct {p0, v4}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->doDragFloatView(Z)V

    .line 1363
    iget v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFloatViewMid:I

    iget v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFloatViewHeightHalf:I

    add-int/2addr v0, v1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1364
    iget v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFloatViewMid:I

    iget v2, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFloatViewHeightHalf:I

    sub-int/2addr v1, v2

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1367
    iget-object v2, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mDragScroller:Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScroller;

    invoke-virtual {v2}, Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScroller;->getScrollDir()I

    move-result v2

    .line 1369
    iget v3, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mLastY:I

    if-le v0, v3, :cond_2

    iget v3, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mDownScrollStartY:I

    if-le v0, v3, :cond_2

    .line 1370
    if-eq v2, v4, :cond_2

    .line 1374
    if-eq v2, v5, :cond_0

    .line 1376
    iget-object v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mDragScroller:Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScroller;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScroller;->stopScrolling(Z)V

    .line 1380
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mDragScroller:Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScroller;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScroller;->startScrolling(I)V

    .line 1400
    :cond_1
    :goto_0
    return-void

    .line 1381
    :cond_2
    iget v3, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mLastY:I

    if-ge v1, v3, :cond_4

    iget v3, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mUpScrollStartY:I

    if-ge v1, v3, :cond_4

    .line 1382
    if-eqz v2, :cond_4

    .line 1386
    if-eq v2, v5, :cond_3

    .line 1388
    iget-object v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mDragScroller:Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScroller;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScroller;->stopScrolling(Z)V

    .line 1392
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mDragScroller:Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScroller;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScroller;->startScrolling(I)V

    goto :goto_0

    .line 1393
    :cond_4
    iget v2, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mUpScrollStartY:I

    if-lt v1, v2, :cond_1

    iget v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mDownScrollStartY:I

    if-gt v0, v1, :cond_1

    .line 1394
    iget-object v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mDragScroller:Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScroller;

    invoke-virtual {v0}, Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScroller;->isScrolling()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1398
    iget-object v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mDragScroller:Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScroller;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScroller;->stopScrolling(Z)V

    goto :goto_0
.end method

.method private destroyFloatView()V
    .locals 2

    .prologue
    .line 1968
    iget-object v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1969
    iget-object v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFloatView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1970
    iget-object v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFloatViewManager:Lcom/alipay/mobile/emotion/drag/DragSortListView$FloatViewManager;

    if-eqz v0, :cond_0

    .line 1971
    iget-object v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFloatViewManager:Lcom/alipay/mobile/emotion/drag/DragSortListView$FloatViewManager;

    iget-object v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/emotion/drag/DragSortListView$FloatViewManager;->onDestroyFloatView(Landroid/view/View;)V

    .line 1973
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFloatView:Landroid/view/View;

    .line 1974
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->invalidate()V

    .line 1976
    :cond_1
    return-void
.end method

.method private doActionUpOrCancel()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1231
    iput v2, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mCancelMethod:I

    .line 1232
    iput-boolean v2, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mInTouchEvent:Z

    .line 1233
    iget v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mDragState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1234
    iput v2, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mDragState:I

    .line 1236
    :cond_0
    iget v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFloatAlpha:F

    iput v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mCurrFloatAlpha:F

    .line 1237
    iput-boolean v2, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mListViewIntercepted:Z

    .line 1238
    iget-object v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mChildHeightCache:Lcom/alipay/mobile/emotion/drag/DragSortListView$HeightCache;

    invoke-virtual {v0}, Lcom/alipay/mobile/emotion/drag/DragSortListView$HeightCache;->clear()V

    .line 1239
    return-void
.end method

.method private doDragFloatView(ILandroid/view/View;Z)V
    .locals 3

    .prologue
    .line 1872
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mBlockLayoutRequests:Z

    .line 1874
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->updateFloatView()V

    .line 1876
    iget v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFirstExpPos:I

    .line 1877
    iget v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mSecondExpPos:I

    .line 1879
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->updatePositions()Z

    move-result v2

    .line 1881
    if-eqz v2, :cond_0

    .line 1882
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->adjustAllItems()V

    .line 1883
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->adjustScroll(ILandroid/view/View;II)I

    move-result v0

    .line 1887
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    .line 1888
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1887
    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->setSelectionFromTop(II)V

    .line 1889
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->layoutChildren()V

    .line 1892
    :cond_0
    if-nez v2, :cond_1

    if-eqz p3, :cond_2

    .line 1893
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->invalidate()V

    .line 1896
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mBlockLayoutRequests:Z

    .line 1897
    return-void
.end method

.method private doDragFloatView(Z)V
    .locals 2

    .prologue
    .line 1860
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getChildCount()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 1861
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getChildCount()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1863
    if-nez v1, :cond_0

    .line 1868
    :goto_0
    return-void

    .line 1867
    :cond_0
    invoke-direct {p0, v0, v1, p1}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->doDragFloatView(ILandroid/view/View;Z)V

    goto :goto_0
.end method

.method private drawDivider(ILandroid/graphics/Canvas;)V
    .locals 7

    .prologue
    .line 588
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 589
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getDividerHeight()I

    move-result v3

    .line 592
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 594
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    .line 593
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 595
    if-eqz v0, :cond_0

    .line 596
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getPaddingLeft()I

    move-result v4

    .line 597
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getPaddingRight()I

    move-result v5

    sub-int v5, v1, v5

    .line 601
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 603
    iget v6, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mSrcPos:I

    if-le p1, v6, :cond_1

    .line 604
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v0

    add-int/2addr v1, v0

    .line 605
    add-int v0, v1, v3

    .line 613
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 614
    invoke-virtual {p2, v4, v1, v5, v0}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 615
    invoke-virtual {v2, v4, v1, v5, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 616
    invoke-virtual {v2, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 617
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    .line 620
    :cond_0
    return-void

    .line 607
    :cond_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v0

    sub-int/2addr v0, v1

    .line 608
    sub-int v1, v0, v3

    goto :goto_0
.end method

.method private dropFloatView()V
    .locals 4

    .prologue
    .line 1109
    const/4 v0, 0x2

    iput v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mDragState:I

    .line 1111
    iget-object v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mDropListener:Lcom/alipay/mobile/emotion/drag/DragSortListView$DropListener;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFloatPos:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFloatPos:I

    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1112
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getHeaderViewsCount()I

    move-result v0

    .line 1113
    iget-object v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mDropListener:Lcom/alipay/mobile/emotion/drag/DragSortListView$DropListener;

    iget v2, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mSrcPos:I

    sub-int/2addr v2, v0

    iget v3, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFloatPos:I

    sub-int v0, v3, v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/emotion/drag/DragSortListView$DropListener;->drop(II)V

    .line 1116
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->destroyFloatView()V

    .line 1118
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->adjustOnReorder()V

    .line 1119
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->clearPositions()V

    .line 1120
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->adjustAllItems()V

    .line 1123
    iget-boolean v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mInTouchEvent:Z

    if-eqz v0, :cond_1

    .line 1124
    const/4 v0, 0x3

    iput v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mDragState:I

    .line 1128
    :goto_0
    return-void

    .line 1126
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mDragState:I

    goto :goto_0
.end method

.method private static findFirstSetIndex(Landroid/util/SparseBooleanArray;II)I
    .locals 3

    .prologue
    .line 2281
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    .line 2282
    invoke-static {p0, p1}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->insertionIndexForKey(Landroid/util/SparseBooleanArray;I)I

    move-result v0

    .line 2283
    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    if-ge v2, p2, :cond_0

    invoke-virtual {p0, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2285
    :cond_0
    if-eq v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    if-lt v1, p2, :cond_2

    .line 2286
    :cond_1
    const/4 v0, -0x1

    .line 2287
    :cond_2
    return v0

    .line 2284
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getChildHeight(I)I
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 1492
    iget v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mSrcPos:I

    if-ne p1, v1, :cond_1

    .line 1538
    :cond_0
    :goto_0
    return v0

    .line 1496
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1498
    if-eqz v1, :cond_2

    .line 1501
    invoke-direct {p0, p1, v1, v0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getChildHeight(ILandroid/view/View;Z)I

    move-result v0

    goto :goto_0

    .line 1505
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mChildHeightCache:Lcom/alipay/mobile/emotion/drag/DragSortListView$HeightCache;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/emotion/drag/DragSortListView$HeightCache;->get(I)I

    move-result v0

    .line 1506
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1511
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 1512
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v1

    .line 1515
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    .line 1516
    iget-object v3, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    array-length v3, v3

    if-eq v2, v3, :cond_3

    .line 1517
    new-array v2, v2, [Landroid/view/View;

    iput-object v2, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    .line 1520
    :cond_3
    if-ltz v1, :cond_5

    .line 1521
    iget-object v2, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    aget-object v2, v2, v1

    if-nez v2, :cond_4

    .line 1522
    invoke-interface {v0, p1, v4, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1523
    iget-object v2, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    aput-object v0, v2, v1

    .line 1533
    :goto_1
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getChildHeight(ILandroid/view/View;Z)I

    move-result v0

    .line 1536
    iget-object v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mChildHeightCache:Lcom/alipay/mobile/emotion/drag/DragSortListView$HeightCache;

    invoke-virtual {v1, p1, v0}, Lcom/alipay/mobile/emotion/drag/DragSortListView$HeightCache;->add(II)V

    goto :goto_0

    .line 1525
    :cond_4
    iget-object v2, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    aget-object v1, v2, v1

    invoke-interface {v0, p1, v1, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 1529
    :cond_5
    invoke-interface {v0, p1, v4, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_1
.end method

.method private getChildHeight(ILandroid/view/View;Z)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1544
    iget v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mSrcPos:I

    if-ne p1, v1, :cond_1

    .line 1571
    :cond_0
    :goto_0
    return v0

    .line 1549
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getHeaderViewsCount()I

    move-result v1

    if-lt p1, v1, :cond_2

    .line 1550
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getCount()I

    move-result v1

    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getFooterViewsCount()I

    move-result v2

    sub-int/2addr v1, v2

    if-lt p1, v1, :cond_3

    .line 1556
    :cond_2
    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1558
    if-eqz v0, :cond_4

    .line 1559
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v1, :cond_4

    .line 1560
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 1553
    :cond_3
    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    goto :goto_1

    .line 1564
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 1566
    if-eqz v0, :cond_5

    if-eqz p3, :cond_0

    .line 1567
    :cond_5
    invoke-direct {p0, p2}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->measureItem(Landroid/view/View;)V

    .line 1568
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_0
.end method

.method private getItemHeight(I)I
    .locals 1

    .prologue
    .line 671
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 673
    if-eqz v0, :cond_0

    .line 675
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 679
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getChildHeight(I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->calcItemHeight(II)I

    move-result v0

    goto :goto_0
.end method

.method private getShuffleEdge(II)I
    .locals 6

    .prologue
    .line 752
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getHeaderViewsCount()I

    move-result v0

    .line 753
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getFooterViewsCount()I

    move-result v1

    .line 759
    if-le p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getCount()I

    move-result v0

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_1

    :cond_0
    move v0, p2

    .line 807
    :goto_0
    return v0

    .line 763
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getDividerHeight()I

    move-result v0

    .line 767
    iget v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFloatViewHeight:I

    iget v2, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mItemHeightCollapsed:I

    sub-int/2addr v1, v2

    .line 768
    invoke-direct {p0, p1}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getChildHeight(I)I

    move-result v2

    .line 769
    invoke-direct {p0, p1}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getItemHeight(I)I

    move-result v3

    .line 774
    iget v4, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mSecondExpPos:I

    iget v5, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mSrcPos:I

    if-gt v4, v5, :cond_5

    .line 777
    iget v4, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mSecondExpPos:I

    if-ne p1, v4, :cond_4

    iget v4, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFirstExpPos:I

    iget v5, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mSecondExpPos:I

    if-eq v4, v5, :cond_4

    .line 778
    iget v4, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mSrcPos:I

    if-ne p1, v4, :cond_3

    .line 779
    add-int v1, p2, v3

    iget v3, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFloatViewHeight:I

    sub-int p2, v1, v3

    .line 801
    :cond_2
    :goto_1
    iget v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mSrcPos:I

    if-gt p1, v1, :cond_7

    .line 802
    iget v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFloatViewHeight:I

    sub-int v0, v1, v0

    add-int/lit8 v1, p1, -0x1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getChildHeight(I)I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    goto :goto_0

    .line 781
    :cond_3
    sub-int/2addr v3, v2

    .line 782
    add-int/2addr v3, p2

    sub-int p2, v3, v1

    goto :goto_1

    .line 784
    :cond_4
    iget v3, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mSecondExpPos:I

    if-le p1, v3, :cond_2

    iget v3, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mSrcPos:I

    if-gt p1, v3, :cond_2

    .line 785
    sub-int/2addr p2, v1

    goto :goto_1

    .line 791
    :cond_5
    iget v4, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mSrcPos:I

    if-le p1, v4, :cond_6

    iget v4, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFirstExpPos:I

    if-gt p1, v4, :cond_6

    .line 792
    add-int/2addr p2, v1

    goto :goto_1

    .line 793
    :cond_6
    iget v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mSecondExpPos:I

    if-ne p1, v1, :cond_2

    .line 794
    iget v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFirstExpPos:I

    iget v4, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mSecondExpPos:I

    if-eq v1, v4, :cond_2

    .line 795
    sub-int v1, v3, v2

    .line 796
    add-int/2addr p2, v1

    goto :goto_1

    .line 804
    :cond_7
    sub-int v0, v2, v0

    iget v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFloatViewHeight:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    goto :goto_0
.end method

.method private static insertionIndexForKey(Landroid/util/SparseBooleanArray;I)I
    .locals 4

    .prologue
    .line 2291
    const/4 v1, 0x0

    .line 2292
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    move v2, v1

    .line 2293
    :goto_0
    sub-int v1, v0, v2

    if-gtz v1, :cond_0

    .line 2300
    return v2

    .line 2294
    :cond_0
    add-int v1, v2, v0

    shr-int/lit8 v1, v1, 0x1

    .line 2295
    invoke-virtual {p0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    if-ge v3, p1, :cond_1

    .line 2296
    add-int/lit8 v1, v1, 0x1

    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 2298
    goto :goto_0
.end method

.method private measureFloatView()V
    .locals 1

    .prologue
    .line 1677
    iget-object v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1678
    iget-object v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->measureItem(Landroid/view/View;)V

    .line 1679
    iget-object v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFloatViewHeight:I

    .line 1680
    iget v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFloatViewHeight:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFloatViewHeightHalf:I

    .line 1682
    :cond_0
    return-void
.end method

.method private measureItem(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1658
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1659
    if-nez v0, :cond_0

    .line 1660
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    .line 1661
    const/4 v1, -0x1

    .line 1662
    const/4 v2, -0x2

    .line 1660
    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 1663
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1665
    :cond_0
    iget v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mWidthMeasureSpec:I

    .line 1666
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getListPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getListPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1665
    invoke-static {v1, v2, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 1668
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v2, :cond_1

    .line 1669
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1673
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1674
    return-void

    .line 1671
    :cond_1
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0
.end method

.method private printPosData()V
    .locals 0

    .prologue
    .line 685
    return-void
.end method

.method private static rotate(IIII)I
    .locals 2

    .prologue
    .line 2268
    sub-int v1, p3, p2

    .line 2270
    add-int v0, p0, p1

    .line 2271
    if-ge v0, p2, :cond_1

    .line 2272
    add-int/2addr v0, v1

    .line 2276
    :cond_0
    :goto_0
    return v0

    .line 2273
    :cond_1
    if-lt v0, p3, :cond_0

    .line 2274
    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private saveTouchCoords(Landroid/view/MotionEvent;)V
    .locals 2

    .prologue
    .line 1242
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 1243
    if-eqz v0, :cond_0

    .line 1244
    iget v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mX:I

    iput v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mLastX:I

    .line 1245
    iget v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mY:I

    iput v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mLastY:I

    .line 1247
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mX:I

    .line 1248
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mY:I

    .line 1249
    if-nez v0, :cond_1

    .line 1250
    iget v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mX:I

    iput v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mLastX:I

    .line 1251
    iget v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mY:I

    iput v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mLastY:I

    .line 1253
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mX:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mOffsetX:I

    .line 1254
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mY:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mOffsetY:I

    .line 1255
    return-void
.end method

.method private updateFloatView()V
    .locals 7

    .prologue
    .line 1905
    iget-object v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFloatViewManager:Lcom/alipay/mobile/emotion/drag/DragSortListView$FloatViewManager;

    if-eqz v0, :cond_0

    .line 1906
    iget-object v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mTouchLoc:Landroid/graphics/Point;

    iget v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mX:I

    iget v2, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mY:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 1907
    iget-object v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFloatViewManager:Lcom/alipay/mobile/emotion/drag/DragSortListView$FloatViewManager;

    iget-object v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFloatView:Landroid/view/View;

    iget-object v2, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget-object v3, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mTouchLoc:Landroid/graphics/Point;

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/emotion/drag/DragSortListView$FloatViewManager;->onDragFloatView(Landroid/view/View;Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 1910
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 1911
    iget-object v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->y:I

    .line 1914
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getPaddingLeft()I

    move-result v1

    .line 1915
    iget v3, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mDragFlags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_7

    if-le v0, v1, :cond_7

    .line 1916
    iget-object v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 1922
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getHeaderViewsCount()I

    move-result v1

    .line 1923
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getFooterViewsCount()I

    move-result v3

    .line 1924
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getFirstVisiblePosition()I

    move-result v4

    .line 1925
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getLastVisiblePosition()I

    move-result v5

    .line 1929
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getPaddingTop()I

    move-result v0

    .line 1930
    if-ge v4, v1, :cond_2

    .line 1931
    sub-int v0, v1, v4

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1933
    :cond_2
    iget v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mDragFlags:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_3

    .line 1934
    iget v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mSrcPos:I

    if-gt v4, v1, :cond_3

    .line 1935
    iget v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mSrcPos:I

    sub-int/2addr v1, v4

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1941
    :cond_3
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v1, v6

    .line 1942
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getCount()I

    move-result v6

    sub-int/2addr v6, v3

    add-int/lit8 v6, v6, -0x1

    if-lt v5, v6, :cond_4

    .line 1943
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getCount()I

    move-result v1

    sub-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, v4

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1944
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 1946
    :cond_4
    iget v3, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mDragFlags:I

    and-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_5

    .line 1947
    iget v3, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mSrcPos:I

    if-lt v5, v3, :cond_5

    .line 1948
    iget v3, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mSrcPos:I

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1949
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 1948
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1957
    :cond_5
    if-ge v2, v0, :cond_8

    .line 1958
    iget-object v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iput v0, v1, Landroid/graphics/Point;->y:I

    .line 1964
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFloatViewHeightHalf:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFloatViewMid:I

    .line 1965
    return-void

    .line 1917
    :cond_7
    iget v3, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mDragFlags:I

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_1

    if-ge v0, v1, :cond_1

    .line 1918
    iget-object v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iput v1, v0, Landroid/graphics/Point;->x:I

    goto/16 :goto_0

    .line 1959
    :cond_8
    iget v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFloatViewHeight:I

    add-int/2addr v0, v2

    if-le v0, v1, :cond_6

    .line 1960
    iget-object v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v2, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFloatViewHeight:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->y:I

    goto :goto_1
.end method

.method private updatePositions()Z
    .locals 10

    .prologue
    const/4 v3, 0x1

    .line 812
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getFirstVisiblePosition()I

    move-result v2

    .line 813
    iget v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFirstExpPos:I

    .line 814
    sub-int v0, v1, v2

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 816
    if-nez v0, :cond_0

    .line 817
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getChildCount()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int v1, v2, v0

    .line 818
    sub-int v0, v1, v2

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 820
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    .line 822
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 824
    invoke-direct {p0, v1, v2}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getShuffleEdge(II)I

    move-result v4

    .line 825
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getDividerHeight()I

    move-result v5

    .line 831
    iget v6, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFloatViewMid:I

    if-ge v6, v4, :cond_7

    move v0, v1

    .line 850
    :goto_0
    if-gez v0, :cond_6

    .line 880
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getHeaderViewsCount()I

    move-result v1

    .line 881
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getFooterViewsCount()I

    move-result v4

    .line 883
    const/4 v2, 0x0

    .line 885
    iget v5, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFirstExpPos:I

    .line 886
    iget v6, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mSecondExpPos:I

    .line 887
    iput v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFirstExpPos:I

    .line 888
    iput v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mSecondExpPos:I

    .line 891
    iget v7, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFirstExpPos:I

    if-ge v7, v1, :cond_8

    .line 893
    iput v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFirstExpPos:I

    .line 894
    iput v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mSecondExpPos:I

    move v0, v1

    .line 901
    :cond_2
    :goto_1
    iget v4, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFirstExpPos:I

    if-ne v4, v5, :cond_3

    iget v4, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mSecondExpPos:I

    if-eq v4, v6, :cond_4

    :cond_3
    move v2, v3

    .line 905
    :cond_4
    iget v4, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFloatPos:I

    if-eq v0, v4, :cond_9

    .line 906
    iget-object v2, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mDragListener:Lcom/alipay/mobile/emotion/drag/DragSortListView$DragListener;

    if-eqz v2, :cond_5

    .line 907
    iget-object v2, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mDragListener:Lcom/alipay/mobile/emotion/drag/DragSortListView$DragListener;

    iget v4, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFloatPos:I

    sub-int/2addr v4, v1

    sub-int v1, v0, v1

    invoke-interface {v2, v4, v1}, Lcom/alipay/mobile/emotion/drag/DragSortListView$DragListener;->drag(II)V

    .line 910
    :cond_5
    iput v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFloatPos:I

    .line 914
    :goto_2
    return v3

    .line 837
    :cond_6
    add-int/lit8 v0, v0, -0x1

    .line 838
    invoke-direct {p0, v0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getItemHeight(I)I

    move-result v1

    .line 840
    if-eqz v0, :cond_1

    .line 841
    add-int/2addr v1, v5

    sub-int/2addr v2, v1

    .line 846
    invoke-direct {p0, v0, v2}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getShuffleEdge(II)I

    move-result v1

    .line 849
    iget v4, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFloatViewMid:I

    if-ge v4, v1, :cond_1

    goto :goto_0

    .line 858
    :cond_7
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getCount()I

    move-result v4

    move v9, v0

    move v0, v1

    move v1, v9

    .line 859
    :goto_3
    if-ge v0, v4, :cond_1

    .line 860
    add-int/lit8 v6, v4, -0x1

    if-eq v0, v6, :cond_1

    .line 861
    add-int/2addr v1, v5

    add-int/2addr v2, v1

    .line 866
    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getItemHeight(I)I

    move-result v1

    .line 867
    add-int/lit8 v6, v0, 0x1

    invoke-direct {p0, v6, v2}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getShuffleEdge(II)I

    move-result v6

    .line 871
    iget v7, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFloatViewMid:I

    if-lt v7, v6, :cond_1

    .line 872
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 895
    :cond_8
    iget v7, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mSecondExpPos:I

    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getCount()I

    move-result v8

    sub-int/2addr v8, v4

    if-lt v7, v8, :cond_2

    .line 896
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getCount()I

    move-result v0

    sub-int/2addr v0, v4

    add-int/lit8 v0, v0, -0x1

    .line 897
    iput v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFirstExpPos:I

    .line 898
    iput v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mSecondExpPos:I

    goto :goto_1

    :cond_9
    move v3, v2

    goto :goto_2
.end method

.method private updateScrollStarts()V
    .locals 6

    .prologue
    .line 1403
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getPaddingTop()I

    move-result v0

    .line 1404
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getHeight()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1405
    int-to-float v2, v1

    .line 1407
    int-to-float v3, v0

    iget v4, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mDragUpScrollStartFrac:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iput v3, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mUpScrollStartYF:F

    .line 1408
    int-to-float v3, v0

    const/high16 v4, 0x3f800000    # 1.0f

    iget v5, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mDragDownScrollStartFrac:F

    sub-float/2addr v4, v5

    .line 1409
    mul-float/2addr v2, v4

    add-float/2addr v2, v3

    .line 1408
    iput v2, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mDownScrollStartYF:F

    .line 1411
    iget v2, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mUpScrollStartYF:F

    float-to-int v2, v2

    iput v2, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mUpScrollStartY:I

    .line 1412
    iget v2, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mDownScrollStartYF:F

    float-to-int v2, v2

    iput v2, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mDownScrollStartY:I

    .line 1414
    iget v2, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mUpScrollStartYF:F

    int-to-float v3, v0

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mDragUpScrollHeight:F

    .line 1415
    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mDownScrollStartYF:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mDragDownScrollHeight:F

    .line 1416
    return-void
.end method


# virtual methods
.method public cancelDrag()V
    .locals 2

    .prologue
    .line 1085
    iget v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mDragState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1086
    iget-object v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mDragScroller:Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScroller;->stopScrolling(Z)V

    .line 1087
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->destroyFloatView()V

    .line 1088
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->clearPositions()V

    .line 1089
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->adjustAllItems()V

    .line 1091
    iget-boolean v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mInTouchEvent:Z

    if-eqz v0, :cond_1

    .line 1092
    const/4 v0, 0x3

    iput v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mDragState:I

    .line 1097
    :cond_0
    :goto_0
    return-void

    .line 1094
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mDragState:I

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 624
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 626
    iget v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mDragState:I

    if-eqz v0, :cond_1

    .line 628
    iget v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFirstExpPos:I

    iget v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mSrcPos:I

    if-eq v0, v1, :cond_0

    .line 629
    iget v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFirstExpPos:I

    invoke-direct {p0, v0, p1}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->drawDivider(ILandroid/graphics/Canvas;)V

    .line 631
    :cond_0
    iget v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mSecondExpPos:I

    iget v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFirstExpPos:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mSecondExpPos:I

    iget v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mSrcPos:I

    if-eq v0, v1, :cond_1

    .line 632
    iget v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mSecondExpPos:I

    invoke-direct {p0, v0, p1}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->drawDivider(ILandroid/graphics/Canvas;)V

    .line 636
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 638
    iget-object v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 639
    iget-object v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 641
    iget-object v2, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    .line 643
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getWidth()I

    .line 644
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 659
    iget-object v2, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 660
    invoke-virtual {p1, v4, v4, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 664
    iget-object v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 665
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 666
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 668
    :cond_2
    return-void
.end method

.method public getFloatAlpha()F
    .locals 1

    .prologue
    .line 423
    iget v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mCurrFloatAlpha:F

    return v0
.end method

.method public getInputAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mAdapterWrapper:Lcom/alipay/mobile/emotion/drag/DragSortListView$AdapterWrapper;

    if-nez v0, :cond_0

    .line 475
    const/4 v0, 0x0

    .line 477
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mAdapterWrapper:Lcom/alipay/mobile/emotion/drag/DragSortListView$AdapterWrapper;

    invoke-virtual {v0}, Lcom/alipay/mobile/emotion/drag/DragSortListView$AdapterWrapper;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    goto :goto_0
.end method

.method protected layoutChildren()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1699
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 1701
    iget-object v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1702
    iget-object v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFloatViewOnMeasured:Z

    if-nez v0, :cond_0

    .line 1706
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->measureFloatView()V

    .line 1708
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFloatView:Landroid/view/View;

    iget-object v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 1709
    iget-object v2, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 1708
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 1710
    iput-boolean v3, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFloatViewOnMeasured:Z

    .line 1712
    :cond_1
    return-void
.end method

.method public listViewIntercepted()Z
    .locals 1

    .prologue
    .line 1258
    iget-boolean v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mListViewIntercepted:Z

    return v0
.end method

.method public moveCheckState(II)V
    .locals 10

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 2148
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v3

    .line 2151
    if-ge p2, p1, :cond_3

    move v0, p1

    move v1, p2

    .line 2155
    :goto_0
    add-int/lit8 v4, v0, 0x1

    .line 2157
    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    new-array v5, v0, [I

    .line 2158
    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    new-array v6, v0, [I

    .line 2159
    invoke-static {v3, v1, v4, v5, v6}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->buildRunList(Landroid/util/SparseBooleanArray;II[I[I)I

    move-result v3

    .line 2160
    if-ne v3, v8, :cond_1

    aget v0, v5, v2

    aget v7, v6, v2

    if-ne v0, v7, :cond_1

    .line 2180
    :cond_0
    return-void

    .line 2166
    :cond_1
    if-ge p1, p2, :cond_2

    move v0, v2

    .line 2167
    :goto_1
    if-eq v0, v3, :cond_0

    .line 2168
    aget v7, v5, v0

    invoke-static {v7, v9, v1, v4}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->rotate(IIII)I

    move-result v7

    invoke-virtual {p0, v7, v8}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->setItemChecked(IZ)V

    .line 2170
    aget v7, v6, v0

    invoke-static {v7, v9, v1, v4}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->rotate(IIII)I

    move-result v7

    invoke-virtual {p0, v7, v2}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->setItemChecked(IZ)V

    .line 2167
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v2

    .line 2175
    :goto_2
    if-eq v0, v3, :cond_0

    .line 2176
    aget v1, v5, v0

    invoke-virtual {p0, v1, v2}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->setItemChecked(IZ)V

    .line 2177
    aget v1, v6, v0

    invoke-virtual {p0, v1, v8}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->setItemChecked(IZ)V

    .line 2175
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
    .line 1072
    iget-object v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mDropListener:Lcom/alipay/mobile/emotion/drag/DragSortListView$DropListener;

    if-eqz v0, :cond_0

    .line 1073
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getInputAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 1074
    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    if-ltz p2, :cond_0

    if-ge p2, v0, :cond_0

    .line 1075
    iget-object v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mDropListener:Lcom/alipay/mobile/emotion/drag/DragSortListView$DropListener;

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/emotion/drag/DragSortListView$DropListener;->drop(II)V

    .line 1078
    :cond_0
    return-void
.end method

.method protected onDragTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 1716
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 1718
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    .line 1737
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 1720
    :pswitch_0
    iget v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mDragState:I

    if-ne v0, v1, :cond_0

    .line 1721
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->cancelDrag()V

    .line 1723
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->doActionUpOrCancel()V

    goto :goto_0

    .line 1727
    :pswitch_1
    iget v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mDragState:I

    if-ne v0, v1, :cond_1

    .line 1728
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->stopDrag(Z)Z

    .line 1730
    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->doActionUpOrCancel()V

    goto :goto_0

    .line 1733
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->continueDrag(II)V

    goto :goto_0

    .line 1718
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
    .line 919
    invoke-super {p0, p1}, Landroid/widget/ListView;->onDraw(Landroid/graphics/Canvas;)V

    .line 920
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 1265
    invoke-direct {p0, p1}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->saveTouchCoords(Landroid/view/MotionEvent;)V

    .line 1266
    iput-boolean v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mLastCallWasIntercept:Z

    .line 1268
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v3, v1, 0xff

    .line 1270
    if-nez v3, :cond_1

    .line 1271
    iget v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mDragState:I

    if-eqz v1, :cond_0

    .line 1273
    iput-boolean v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mIgnoreTouchEvent:Z

    .line 1310
    :goto_0
    return v0

    .line 1276
    :cond_0
    iput-boolean v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mInTouchEvent:Z

    .line 1282
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v1, :cond_4

    move v1, v0

    .line 1305
    :goto_1
    if-eq v3, v0, :cond_2

    .line 1306
    const/4 v0, 0x3

    if-ne v3, v0, :cond_3

    .line 1307
    :cond_2
    iput-boolean v2, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mInTouchEvent:Z

    :cond_3
    move v0, v1

    .line 1310
    goto :goto_0

    .line 1286
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1287
    iput-boolean v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mListViewIntercepted:Z

    move v1, v0

    .line 1291
    :goto_2
    packed-switch v3, :pswitch_data_0

    .line 1297
    :pswitch_0
    if-eqz v1, :cond_5

    .line 1298
    iput v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mCancelMethod:I

    goto :goto_1

    .line 1294
    :pswitch_1
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->doActionUpOrCancel()V

    goto :goto_1

    .line 1300
    :cond_5
    const/4 v4, 0x2

    iput v4, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mCancelMethod:I

    goto :goto_1

    :cond_6
    move v1, v2

    goto :goto_2

    .line 1291
    nop

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
    .line 1686
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    .line 1688
    iget-object v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1689
    iget-object v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1690
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->measureFloatView()V

    .line 1692
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFloatViewOnMeasured:Z

    .line 1694
    :cond_1
    iput p1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mWidthMeasureSpec:I

    .line 1695
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .prologue
    .line 1420
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->onSizeChanged(IIII)V

    .line 1421
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->updateScrollStarts()V

    .line 1422
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1184
    iget-boolean v2, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mIgnoreTouchEvent:Z

    if-eqz v2, :cond_1

    .line 1185
    iput-boolean v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mIgnoreTouchEvent:Z

    .line 1227
    :cond_0
    :goto_0
    return v0

    .line 1191
    :cond_1
    iget-boolean v2, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mLastCallWasIntercept:Z

    .line 1192
    iput-boolean v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mLastCallWasIntercept:Z

    .line 1194
    if-nez v2, :cond_2

    .line 1195
    invoke-direct {p0, p1}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->saveTouchCoords(Landroid/view/MotionEvent;)V

    .line 1199
    :cond_2
    iget v2, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mDragState:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 1200
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->onDragTouchEvent(Landroid/view/MotionEvent;)Z

    move v0, v1

    .line 1201
    goto :goto_0

    .line 1207
    :cond_3
    iget v2, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mDragState:I

    if-nez v2, :cond_4

    .line 1208
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    .line 1213
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 1215
    packed-switch v2, :pswitch_data_0

    .line 1221
    :pswitch_0
    if-eqz v0, :cond_0

    .line 1222
    iput v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mCancelMethod:I

    goto :goto_0

    .line 1218
    :pswitch_1
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->doActionUpOrCancel()V

    goto :goto_0

    .line 1215
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public removeCheckState(I)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v8, -0x1

    .line 2196
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    .line 2198
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 2215
    :cond_0
    return-void

    .line 2200
    :cond_1
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    new-array v2, v2, [I

    .line 2201
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    new-array v3, v3, [I

    .line 2202
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    .line 2204
    invoke-static {v0, p1, v4, v2, v3}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->buildRunList(Landroid/util/SparseBooleanArray;II[I[I)I

    move-result v5

    move v0, v1

    .line 2205
    :goto_0
    if-eq v0, v5, :cond_0

    .line 2206
    aget v6, v2, v0

    if-eq v6, p1, :cond_3

    aget v6, v3, v0

    aget v7, v2, v0

    if-ge v6, v7, :cond_2

    aget v6, v3, v0

    if-gt v6, p1, :cond_3

    .line 2210
    :cond_2
    aget v6, v2, v0

    invoke-static {v6, v8, p1, v4}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->rotate(IIII)I

    move-result v6

    .line 2211
    const/4 v7, 0x1

    .line 2210
    invoke-virtual {p0, v6, v7}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->setItemChecked(IZ)V

    .line 2213
    :cond_3
    aget v6, v3, v0

    invoke-static {v6, v8, p1, v4}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->rotate(IIII)I

    move-result v6

    invoke-virtual {p0, v6, v1}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->setItemChecked(IZ)V

    .line 2205
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 1608
    iget-boolean v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    .line 1609
    invoke-super {p0}, Landroid/widget/ListView;->requestLayout()V

    .line 1611
    :cond_0
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    .prologue
    .line 449
    if-eqz p1, :cond_2

    .line 450
    new-instance v0, Lcom/alipay/mobile/emotion/drag/DragSortListView$AdapterWrapper;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/emotion/drag/DragSortListView$AdapterWrapper;-><init>(Lcom/alipay/mobile/emotion/drag/DragSortListView;Landroid/widget/ListAdapter;)V

    iput-object v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mAdapterWrapper:Lcom/alipay/mobile/emotion/drag/DragSortListView$AdapterWrapper;

    .line 451
    iget-object v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 453
    instance-of v0, p1, Lcom/alipay/mobile/emotion/drag/DragSortListView$DropListener;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 454
    check-cast v0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DropListener;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->setDropListener(Lcom/alipay/mobile/emotion/drag/DragSortListView$DropListener;)V

    .line 456
    :cond_0
    instance-of v0, p1, Lcom/alipay/mobile/emotion/drag/DragSortListView$DragListener;

    if-eqz v0, :cond_1

    .line 457
    check-cast p1, Lcom/alipay/mobile/emotion/drag/DragSortListView$DragListener;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->setDragListener(Lcom/alipay/mobile/emotion/drag/DragSortListView$DragListener;)V

    .line 463
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mAdapterWrapper:Lcom/alipay/mobile/emotion/drag/DragSortListView$AdapterWrapper;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 464
    return-void

    .line 460
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mAdapterWrapper:Lcom/alipay/mobile/emotion/drag/DragSortListView$AdapterWrapper;

    goto :goto_0
.end method

.method public setDragListener(Lcom/alipay/mobile/emotion/drag/DragSortListView$DragListener;)V
    .locals 0

    .prologue
    .line 2039
    iput-object p1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mDragListener:Lcom/alipay/mobile/emotion/drag/DragSortListView$DragListener;

    .line 2040
    return-void
.end method

.method public setDragScrollProfile(Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScrollProfile;)V
    .locals 0

    .prologue
    .line 2090
    if-eqz p1, :cond_0

    .line 2091
    iput-object p1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mScrollProfile:Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScrollProfile;

    .line 2093
    :cond_0
    return-void
.end method

.method public setDragScrollStart(F)V
    .locals 0

    .prologue
    .line 1322
    invoke-virtual {p0, p1, p1}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->setDragScrollStarts(FF)V

    .line 1323
    return-void
.end method

.method public setDragScrollStarts(FF)V
    .locals 2

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 1338
    cmpl-float v0, p2, v1

    if-lez v0, :cond_1

    .line 1339
    iput v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mDragDownScrollStartFrac:F

    .line 1344
    :goto_0
    cmpl-float v0, p1, v1

    if-lez v0, :cond_2

    .line 1345
    iput v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mDragUpScrollStartFrac:F

    .line 1350
    :goto_1
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getHeight()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1351
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->updateScrollStarts()V

    .line 1353
    :cond_0
    return-void

    .line 1341
    :cond_1
    iput p2, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mDragDownScrollStartFrac:F

    goto :goto_0

    .line 1347
    :cond_2
    iput p1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mDragUpScrollStartFrac:F

    goto :goto_1
.end method

.method public setDragSortListener(Lcom/alipay/mobile/emotion/drag/DragSortListView$DragSortListener;)V
    .locals 0

    .prologue
    .line 2078
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->setDropListener(Lcom/alipay/mobile/emotion/drag/DragSortListView$DropListener;)V

    .line 2079
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->setDragListener(Lcom/alipay/mobile/emotion/drag/DragSortListView$DragListener;)V

    .line 2080
    return-void
.end method

.method public setDropListener(Lcom/alipay/mobile/emotion/drag/DragSortListView$DropListener;)V
    .locals 0

    .prologue
    .line 2055
    iput-object p1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mDropListener:Lcom/alipay/mobile/emotion/drag/DragSortListView$DropListener;

    .line 2056
    return-void
.end method

.method public setFloatAlpha(F)V
    .locals 0

    .prologue
    .line 419
    iput p1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mCurrFloatAlpha:F

    .line 420
    return-void
.end method

.method public setFloatViewManager(Lcom/alipay/mobile/emotion/drag/DragSortListView$FloatViewManager;)V
    .locals 0

    .prologue
    .line 2035
    iput-object p1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFloatViewManager:Lcom/alipay/mobile/emotion/drag/DragSortListView$FloatViewManager;

    .line 2036
    return-void
.end method

.method public setMaxScrollSpeed(F)V
    .locals 0

    .prologue
    .line 434
    iput p1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mMaxScrollSpeed:F

    .line 435
    return-void
.end method

.method public startDrag(IIII)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1766
    iget-boolean v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mInTouchEvent:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFloatViewManager:Lcom/alipay/mobile/emotion/drag/DragSortListView$FloatViewManager;

    if-nez v1, :cond_1

    .line 1775
    :cond_0
    :goto_0
    return v0

    .line 1770
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFloatViewManager:Lcom/alipay/mobile/emotion/drag/DragSortListView$FloatViewManager;

    invoke-interface {v1, p1}, Lcom/alipay/mobile/emotion/drag/DragSortListView$FloatViewManager;->onCreateFloatView(I)Landroid/view/View;

    move-result-object v2

    .line 1772
    if-eqz v2, :cond_0

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 1775
    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->startDrag(ILandroid/view/View;III)Z

    move-result v0

    goto :goto_0
.end method

.method public startDrag(ILandroid/view/View;III)Z
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1807
    iget v2, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mDragState:I

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mInTouchEvent:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFloatView:Landroid/view/View;

    if-nez v2, :cond_0

    .line 1808
    if-nez p2, :cond_1

    :cond_0
    move v0, v1

    .line 1856
    :goto_0
    return v0

    .line 1812
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1813
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1816
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getHeaderViewsCount()I

    move-result v2

    add-int/2addr v2, p1

    .line 1817
    iput v2, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFirstExpPos:I

    .line 1818
    iput v2, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mSecondExpPos:I

    .line 1819
    iput v2, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mSrcPos:I

    .line 1820
    iput v2, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFloatPos:I

    .line 1822
    iput v4, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mDragState:I

    .line 1823
    iput v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mDragFlags:I

    .line 1824
    iget v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mDragFlags:I

    or-int/2addr v1, p3

    iput v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mDragFlags:I

    .line 1826
    iput-object p2, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFloatView:Landroid/view/View;

    .line 1827
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->measureFloatView()V

    .line 1829
    iput p4, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mDragDeltaX:I

    .line 1830
    iput p5, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mDragDeltaY:I

    .line 1831
    iget v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mY:I

    iput v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mDragStartY:I

    .line 1833
    iget-object v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v2, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mX:I

    iget v3, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mDragDeltaX:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 1834
    iget-object v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v2, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mY:I

    iget v3, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mDragDeltaY:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 1837
    iget v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mSrcPos:I

    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1839
    if-eqz v1, :cond_3

    .line 1840
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1845
    :cond_3
    iget v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mCancelMethod:I

    packed-switch v1, :pswitch_data_0

    .line 1854
    :goto_1
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->requestLayout()V

    goto :goto_0

    .line 1847
    :pswitch_0
    iget-object v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    invoke-super {p0, v1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 1850
    :pswitch_1
    iget-object v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    invoke-super {p0, v1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 1845
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public stopDrag(Z)Z
    .locals 1

    .prologue
    .line 1159
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->stopDrag(ZF)Z

    move-result v0

    return v0
.end method

.method public stopDrag(ZF)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1167
    iget-object v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 1168
    iget-object v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mDragScroller:Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScroller;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScroller;->stopScrolling(Z)V

    .line 1169
    iget-object v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mDropAnimator:Lcom/alipay/mobile/emotion/drag/DragSortListView$DropAnimator;

    if-eqz v1, :cond_0

    .line 1170
    iget-object v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView;->mDropAnimator:Lcom/alipay/mobile/emotion/drag/DragSortListView$DropAnimator;

    invoke-virtual {v1}, Lcom/alipay/mobile/emotion/drag/DragSortListView$DropAnimator;->start()V

    .line 1178
    :goto_0
    return v0

    .line 1172
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->dropFloatView()V

    goto :goto_0

    .line 1178
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public stopDragWithVelocity(ZF)Z
    .locals 1

    .prologue
    .line 1163
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->stopDrag(ZF)Z

    move-result v0

    return v0
.end method
