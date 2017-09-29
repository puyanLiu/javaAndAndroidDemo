.class public Lcom/alipay/mobile/emotion/drag/DragSortController;
.super Lcom/alipay/mobile/emotion/drag/SimpleFloatViewManager;
.source "DragSortController.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static final MISS:I = -0x1

.field public static final ON_DOWN:I


# instance fields
.field private mCurrX:I

.field private mCurrY:I

.field private mDetector:Landroid/view/GestureDetector;

.field private mDragHandleId:I

.field private mDragInitMode:I

.field private mDragging:Z

.field private mDslv:Lcom/alipay/mobile/emotion/drag/DragSortListView;

.field private mHitPos:I

.field private mItemX:I

.field private mItemY:I

.field private mPositionX:I

.field private mSortEnabled:Z

.field private mTempLoc:[I

.field private mTouchSlop:I


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/emotion/drag/DragSortListView;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, v0, v0, v0}, Lcom/alipay/mobile/emotion/drag/DragSortController;-><init>(Lcom/alipay/mobile/emotion/drag/DragSortListView;III)V

    .line 69
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/emotion/drag/DragSortListView;III)V
    .locals 6

    .prologue
    .line 73
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/emotion/drag/DragSortController;-><init>(Lcom/alipay/mobile/emotion/drag/DragSortListView;IIII)V

    .line 74
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/emotion/drag/DragSortListView;IIII)V
    .locals 7

    .prologue
    .line 78
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/emotion/drag/DragSortController;-><init>(Lcom/alipay/mobile/emotion/drag/DragSortListView;IIIII)V

    .line 79
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/emotion/drag/DragSortListView;IIIII)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-direct {p0, p1}, Lcom/alipay/mobile/emotion/drag/SimpleFloatViewManager;-><init>(Landroid/widget/ListView;)V

    .line 32
    iput v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortController;->mDragInitMode:I

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortController;->mSortEnabled:Z

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortController;->mHitPos:I

    .line 44
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortController;->mTempLoc:[I

    .line 52
    iput-boolean v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortController;->mDragging:Z

    .line 94
    iput-object p1, p0, Lcom/alipay/mobile/emotion/drag/DragSortController;->mDslv:Lcom/alipay/mobile/emotion/drag/DragSortListView;

    .line 95
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortController;->mDetector:Landroid/view/GestureDetector;

    .line 96
    invoke-virtual {p1}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    .line 96
    iput v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortController;->mTouchSlop:I

    .line 98
    iput p2, p0, Lcom/alipay/mobile/emotion/drag/DragSortController;->mDragHandleId:I

    .line 99
    invoke-virtual {p0, p3}, Lcom/alipay/mobile/emotion/drag/DragSortController;->setDragInitMode(I)V

    .line 100
    return-void
.end method


# virtual methods
.method public dragHandleHitPosition(Landroid/view/MotionEvent;)I
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortController;->mDragHandleId:I

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/emotion/drag/DragSortController;->viewIdHitPosition(Landroid/view/MotionEvent;I)I

    move-result v0

    return v0
.end method

.method public getDragInitMode()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortController;->mDragInitMode:I

    return v0
.end method

.method public isSortEnabled()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortController;->mSortEnabled:Z

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    .line 273
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/emotion/drag/DragSortController;->startDragPosition(Landroid/view/MotionEvent;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortController;->mHitPos:I

    .line 274
    iget v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortController;->mHitPos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortController;->mDragInitMode:I

    if-nez v0, :cond_0

    .line 275
    iget v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortController;->mHitPos:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/alipay/mobile/emotion/drag/DragSortController;->mItemX:I

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 276
    iget v3, p0, Lcom/alipay/mobile/emotion/drag/DragSortController;->mItemY:I

    sub-int/2addr v2, v3

    .line 275
    invoke-virtual {p0, v0, v1, v2}, Lcom/alipay/mobile/emotion/drag/DragSortController;->startDrag(III)Z

    .line 279
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortController;->mPositionX:I

    .line 281
    const/4 v0, 0x1

    return v0
.end method

.method public onDragFloatView(Landroid/view/View;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 0

    .prologue
    .line 199
    return-void
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .prologue
    .line 300
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 294
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .prologue
    .line 288
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 313
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 306
    const/4 v0, 0x1

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 172
    iget-object v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortController;->mDslv:Lcom/alipay/mobile/emotion/drag/DragSortListView;

    invoke-virtual {v0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->listViewIntercepted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    :goto_0
    return v1

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortController;->mDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 178
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 179
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 181
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortController;->mCurrX:I

    .line 182
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortController;->mCurrY:I

    goto :goto_0

    .line 186
    :pswitch_2
    iput-boolean v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortController;->mDragging:Z

    goto :goto_0

    .line 179
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setDragHandleId(I)V
    .locals 0

    .prologue
    .line 140
    iput p1, p0, Lcom/alipay/mobile/emotion/drag/DragSortController;->mDragHandleId:I

    .line 141
    return-void
.end method

.method public setDragInitMode(I)V
    .locals 0

    .prologue
    .line 114
    iput p1, p0, Lcom/alipay/mobile/emotion/drag/DragSortController;->mDragInitMode:I

    .line 115
    return-void
.end method

.method public setSortEnabled(Z)V
    .locals 0

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/alipay/mobile/emotion/drag/DragSortController;->mSortEnabled:Z

    .line 126
    return-void
.end method

.method public startDrag(III)Z
    .locals 3

    .prologue
    .line 159
    const/4 v0, 0x0

    .line 160
    iget-boolean v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortController;->mSortEnabled:Z

    if-eqz v1, :cond_0

    .line 161
    const/16 v0, 0xc

    .line 165
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortController;->mDslv:Lcom/alipay/mobile/emotion/drag/DragSortListView;

    iget-object v2, p0, Lcom/alipay/mobile/emotion/drag/DragSortController;->mDslv:Lcom/alipay/mobile/emotion/drag/DragSortListView;

    invoke-virtual {v2}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getHeaderViewsCount()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {v1, v2, v0, p2, p3}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->startDrag(IIII)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortController;->mDragging:Z

    .line 167
    iget-boolean v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortController;->mDragging:Z

    return v0
.end method

.method public startDragPosition(Landroid/view/MotionEvent;)I
    .locals 1

    .prologue
    .line 214
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/emotion/drag/DragSortController;->dragHandleHitPosition(Landroid/view/MotionEvent;)I

    move-result v0

    return v0
.end method

.method public viewIdHitPosition(Landroid/view/MotionEvent;I)I
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v1, -0x1

    .line 233
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 234
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 236
    iget-object v3, p0, Lcom/alipay/mobile/emotion/drag/DragSortController;->mDslv:Lcom/alipay/mobile/emotion/drag/DragSortListView;

    invoke-virtual {v3, v0, v2}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->pointToPosition(II)I

    move-result v0

    .line 238
    iget-object v2, p0, Lcom/alipay/mobile/emotion/drag/DragSortController;->mDslv:Lcom/alipay/mobile/emotion/drag/DragSortListView;

    invoke-virtual {v2}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getHeaderViewsCount()I

    move-result v2

    .line 239
    iget-object v3, p0, Lcom/alipay/mobile/emotion/drag/DragSortController;->mDslv:Lcom/alipay/mobile/emotion/drag/DragSortListView;

    invoke-virtual {v3}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getFooterViewsCount()I

    move-result v3

    .line 240
    iget-object v4, p0, Lcom/alipay/mobile/emotion/drag/DragSortController;->mDslv:Lcom/alipay/mobile/emotion/drag/DragSortListView;

    invoke-virtual {v4}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getCount()I

    move-result v4

    .line 245
    if-eq v0, v1, :cond_1

    if-lt v0, v2, :cond_1

    .line 246
    sub-int v2, v4, v3

    if-ge v0, v2, :cond_1

    .line 247
    iget-object v2, p0, Lcom/alipay/mobile/emotion/drag/DragSortController;->mDslv:Lcom/alipay/mobile/emotion/drag/DragSortListView;

    .line 248
    iget-object v3, p0, Lcom/alipay/mobile/emotion/drag/DragSortController;->mDslv:Lcom/alipay/mobile/emotion/drag/DragSortListView;

    invoke-virtual {v3}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, v0, v3

    .line 247
    invoke-virtual {v2, v3}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 249
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v4, v2

    .line 250
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v5, v2

    .line 252
    if-nez p2, :cond_0

    move-object v2, v3

    .line 253
    :goto_0
    if-eqz v2, :cond_1

    .line 254
    iget-object v6, p0, Lcom/alipay/mobile/emotion/drag/DragSortController;->mTempLoc:[I

    invoke-virtual {v2, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 256
    iget-object v6, p0, Lcom/alipay/mobile/emotion/drag/DragSortController;->mTempLoc:[I

    aget v6, v6, v7

    if-le v4, v6, :cond_1

    iget-object v6, p0, Lcom/alipay/mobile/emotion/drag/DragSortController;->mTempLoc:[I

    aget v6, v6, v8

    if-le v5, v6, :cond_1

    .line 257
    iget-object v6, p0, Lcom/alipay/mobile/emotion/drag/DragSortController;->mTempLoc:[I

    aget v6, v6, v7

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    if-ge v4, v6, :cond_1

    .line 258
    iget-object v4, p0, Lcom/alipay/mobile/emotion/drag/DragSortController;->mTempLoc:[I

    aget v4, v4, v8

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v2, v4

    if-ge v5, v2, :cond_1

    .line 260
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortController;->mItemX:I

    .line 261
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortController;->mItemY:I

    .line 268
    :goto_1
    return v0

    .line 252
    :cond_0
    invoke-virtual {v3, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 268
    goto :goto_1
.end method
