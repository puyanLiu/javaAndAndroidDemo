.class public Lcom/alipay/mobile/emotion/widget/CustomGridLayout;
.super Landroid/widget/RelativeLayout;
.source "CustomGridLayout.java"


# static fields
.field private static final INDEX_TAG:I = 0x4000000


# instance fields
.field private hasLongPressing:Z

.field private isLongPressedMode:Z

.field private mChangeBGHandler:Lcom/alipay/mobile/emotion/widget/ChangeBGHandler;

.field private mCurrentChildIndex:I

.field private mCurrentChildView:Landroid/view/View;

.field private mGridListAdapter:Lcom/alipay/mobile/emotion/adapter/CustomGridAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alipay/mobile/emotion/adapter/CustomGridAdapter",
            "<*>;"
        }
    .end annotation
.end field

.field private mInterceptableView:Lcom/alipay/mobile/emotion/widget/Interceptable;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mOnItemPressingLister:Lcom/alipay/mobile/emotion/view/AbsEmotionPanel$OnItemPressingListener;

.field private mTouchFrame:Landroid/graphics/Rect;

.field private final viewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 45
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    iput-object v0, p0, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;->mOnItemPressingLister:Lcom/alipay/mobile/emotion/view/AbsEmotionPanel$OnItemPressingListener;

    .line 35
    iput-object v0, p0, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;->mCurrentChildView:Landroid/view/View;

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;->mCurrentChildIndex:I

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;->isLongPressedMode:Z

    .line 91
    new-instance v0, Lcom/alipay/mobile/emotion/widget/CustomGridLayout$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/emotion/widget/CustomGridLayout$1;-><init>(Lcom/alipay/mobile/emotion/widget/CustomGridLayout;)V

    iput-object v0, p0, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;->viewList:Ljava/util/List;

    .line 54
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;->setmLayoutInflater(Landroid/view/LayoutInflater;)V

    .line 55
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/emotion/widget/CustomGridLayout;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/alipay/mobile/emotion/widget/CustomGridLayout;Z)V
    .locals 0

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;->setLongPressMode(Z)V

    return-void
.end method

.method static synthetic access$2(Lcom/alipay/mobile/emotion/widget/CustomGridLayout;Landroid/view/View;IJ)V
    .locals 0

    .prologue
    .line 175
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;->gainChildViewPressing(Landroid/view/View;IJ)V

    return-void
.end method

.method private gainChildViewPressing(Landroid/view/View;IJ)V
    .locals 1

    .prologue
    .line 176
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    if-eqz p1, :cond_0

    .line 180
    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;->mOnItemPressingLister:Lcom/alipay/mobile/emotion/view/AbsEmotionPanel$OnItemPressingListener;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;->isLongPressedMode:Z

    if-eqz v0, :cond_2

    .line 181
    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;->mOnItemPressingLister:Lcom/alipay/mobile/emotion/view/AbsEmotionPanel$OnItemPressingListener;

    invoke-interface {v0, p0, p1, p2}, Lcom/alipay/mobile/emotion/view/AbsEmotionPanel$OnItemPressingListener;->onItemGainPressing(Landroid/view/View;Landroid/view/View;I)V

    .line 183
    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;->setViewPressedBG(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method private isValidItemIndex(I)Z
    .locals 1

    .prologue
    .line 224
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private releaseCurrentChildView(ILandroid/view/View;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 315
    if-eq p1, v2, :cond_0

    if-eqz p2, :cond_0

    .line 316
    invoke-direct {p0, p2, v0}, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;->setViewPressedBG(Landroid/view/View;Z)V

    .line 317
    iget-object v1, p0, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;->mOnItemPressingLister:Lcom/alipay/mobile/emotion/view/AbsEmotionPanel$OnItemPressingListener;

    if-eqz v1, :cond_0

    .line 318
    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;->mOnItemPressingLister:Lcom/alipay/mobile/emotion/view/AbsEmotionPanel$OnItemPressingListener;

    invoke-interface {v0, p0, p2, p1}, Lcom/alipay/mobile/emotion/view/AbsEmotionPanel$OnItemPressingListener;->onItemLosePressing(Landroid/view/View;Landroid/view/View;I)V

    .line 319
    const/4 v0, 0x1

    .line 324
    :goto_0
    return v0

    .line 322
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;->mCurrentChildView:Landroid/view/View;

    .line 323
    iput v2, p0, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;->mCurrentChildIndex:I

    goto :goto_0
.end method

.method private setLongPressMode(Z)V
    .locals 1

    .prologue
    .line 188
    iput-boolean p1, p0, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;->isLongPressedMode:Z

    .line 189
    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;->mInterceptableView:Lcom/alipay/mobile/emotion/widget/Interceptable;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;->mInterceptableView:Lcom/alipay/mobile/emotion/widget/Interceptable;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/emotion/widget/Interceptable;->setIntercept(Z)V

    .line 192
    :cond_0
    return-void
.end method

.method private setViewPressedBG(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;->mChangeBGHandler:Lcom/alipay/mobile/emotion/widget/ChangeBGHandler;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;->mChangeBGHandler:Lcom/alipay/mobile/emotion/widget/ChangeBGHandler;

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/emotion/widget/ChangeBGHandler;->setViewPressedBG(Landroid/view/View;Z)V

    .line 312
    :cond_0
    return-void
.end method


# virtual methods
.method public getAdapter()Landroid/widget/BaseAdapter;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;->mGridListAdapter:Lcom/alipay/mobile/emotion/adapter/CustomGridAdapter;

    return-object v0
.end method

.method public getInterceptableView()Lcom/alipay/mobile/emotion/widget/Interceptable;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;->mInterceptableView:Lcom/alipay/mobile/emotion/widget/Interceptable;

    return-object v0
.end method

.method public getmLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public hasItemLongPresssing(Z)V
    .locals 0

    .prologue
    .line 328
    iput-boolean p1, p0, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;->hasLongPressing:Z

    .line 329
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 76
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 77
    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;->mGridListAdapter:Lcom/alipay/mobile/emotion/adapter/CustomGridAdapter;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;->mGridListAdapter:Lcom/alipay/mobile/emotion/adapter/CustomGridAdapter;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/emotion/adapter/CustomGridAdapter;->registerView(Lcom/alipay/mobile/emotion/widget/CustomGridLayout;)V

    .line 80
    :cond_0
    return-void
.end method

.method public onDataListChange()V
    .locals 14

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;->removeAllViews()V

    .line 109
    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;->mGridListAdapter:Lcom/alipay/mobile/emotion/adapter/CustomGridAdapter;

    invoke-virtual {v0}, Lcom/alipay/mobile/emotion/adapter/CustomGridAdapter;->getCount()I

    move-result v5

    .line 110
    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;->mGridListAdapter:Lcom/alipay/mobile/emotion/adapter/CustomGridAdapter;

    invoke-virtual {v0}, Lcom/alipay/mobile/emotion/adapter/CustomGridAdapter;->getBlockWidth()I

    move-result v6

    .line 111
    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;->mGridListAdapter:Lcom/alipay/mobile/emotion/adapter/CustomGridAdapter;

    invoke-virtual {v0}, Lcom/alipay/mobile/emotion/adapter/CustomGridAdapter;->getBlockHeight()I

    move-result v7

    .line 112
    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;->mGridListAdapter:Lcom/alipay/mobile/emotion/adapter/CustomGridAdapter;

    invoke-virtual {v0}, Lcom/alipay/mobile/emotion/adapter/CustomGridAdapter;->getCloumnNum()I

    move-result v8

    .line 114
    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;->mGridListAdapter:Lcom/alipay/mobile/emotion/adapter/CustomGridAdapter;

    invoke-virtual {v0}, Lcom/alipay/mobile/emotion/adapter/CustomGridAdapter;->getHorizontalSpacing()I

    move-result v9

    .line 115
    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;->mGridListAdapter:Lcom/alipay/mobile/emotion/adapter/CustomGridAdapter;

    invoke-virtual {v0}, Lcom/alipay/mobile/emotion/adapter/CustomGridAdapter;->getVerticalSpacing()I

    move-result v10

    .line 117
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x60000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    move v4, v0

    .line 120
    :goto_0
    const/4 v0, 0x3

    if-ne v5, v0, :cond_1

    const/4 v0, 0x2

    if-ne v8, v0, :cond_1

    const/4 v0, 0x1

    move v1, v0

    .line 121
    :goto_1
    const/4 v0, 0x0

    move v3, v0

    .line 126
    :goto_2
    if-lt v3, v5, :cond_2

    .line 168
    return-void

    .line 117
    :cond_0
    const/4 v0, 0x0

    move v4, v0

    goto :goto_0

    .line 120
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    goto :goto_1

    .line 127
    :cond_2
    if-eqz v1, :cond_8

    .line 128
    shr-int/lit8 v2, v6, 0x1

    .line 129
    const/4 v0, 0x0

    .line 131
    const/4 v11, 0x1

    if-ne v3, v11, :cond_7

    .line 132
    const/4 v2, 0x0

    .line 133
    add-int v0, v10, v7

    .line 152
    :cond_3
    :goto_3
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v11, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 153
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v11, v2, v0, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 154
    const/4 v0, 0x0

    .line 155
    iget-object v2, p0, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;->viewList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v3, :cond_4

    .line 156
    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;->viewList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 158
    :cond_4
    iget-object v2, p0, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;->mGridListAdapter:Lcom/alipay/mobile/emotion/adapter/CustomGridAdapter;

    const/4 v12, 0x0

    invoke-virtual {v2, v3, v0, v12}, Lcom/alipay/mobile/emotion/adapter/CustomGridAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 159
    iget-object v2, p0, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;->viewList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v3, v2, :cond_5

    .line 160
    iget-object v2, p0, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;->viewList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    :cond_5
    if-nez v4, :cond_6

    .line 163
    iget-object v2, p0, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 165
    :cond_6
    const/high16 v2, 0x4000000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v0, v2, v12}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 166
    invoke-virtual {p0, v0, v11}, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    .line 134
    :cond_7
    const/4 v11, 0x2

    if-ne v3, v11, :cond_3

    .line 135
    add-int v2, v9, v6

    .line 136
    add-int v0, v10, v7

    goto :goto_3

    .line 139
    :cond_8
    div-int v11, v3, v8

    .line 140
    rem-int v12, v3, v8

    .line 141
    const/4 v2, 0x0

    .line 142
    const/4 v0, 0x0

    .line 144
    if-lez v12, :cond_9

    .line 145
    add-int v2, v9, v6

    mul-int/2addr v2, v12

    .line 147
    :cond_9
    if-lez v11, :cond_3

    .line 148
    add-int v0, v10, v7

    mul-int/2addr v0, v11

    goto :goto_3
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 68
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 69
    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;->mGridListAdapter:Lcom/alipay/mobile/emotion/adapter/CustomGridAdapter;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;->mGridListAdapter:Lcom/alipay/mobile/emotion/adapter/CustomGridAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/emotion/adapter/CustomGridAdapter;->registerView(Lcom/alipay/mobile/emotion/widget/CustomGridLayout;)V

    .line 72
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 251
    iget v3, p0, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;->mCurrentChildIndex:I

    .line 252
    iget-object v2, p0, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;->mCurrentChildView:Landroid/view/View;

    .line 254
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 255
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    .line 256
    invoke-virtual {p0, v1, v4}, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;->pointToPosition(II)I

    move-result v1

    .line 258
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 259
    and-int/lit16 v4, v4, 0xff

    packed-switch v4, :pswitch_data_0

    .line 305
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 262
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;->isValidItemIndex(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 263
    iput v1, p0, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;->mCurrentChildIndex:I

    .line 264
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;->mCurrentChildView:Landroid/view/View;

    .line 265
    iget-object v1, p0, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;->mCurrentChildView:Landroid/view/View;

    invoke-direct {p0, v1, v0}, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;->setViewPressedBG(Landroid/view/View;Z)V

    goto :goto_0

    .line 267
    :cond_1
    iput v3, p0, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;->mCurrentChildIndex:I

    .line 268
    iput-object v2, p0, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;->mCurrentChildView:Landroid/view/View;

    goto :goto_0

    .line 272
    :pswitch_2
    const/4 v4, -0x1

    if-eq v1, v4, :cond_4

    .line 274
    if-ltz v3, :cond_2

    if-eq v3, v1, :cond_2

    .line 275
    invoke-direct {p0, v3, v2}, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;->releaseCurrentChildView(ILandroid/view/View;)Z

    .line 277
    :cond_2
    iput v1, p0, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;->mCurrentChildIndex:I

    .line 278
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;->mCurrentChildView:Landroid/view/View;

    .line 281
    iget v1, p0, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;->mCurrentChildIndex:I

    if-eq v3, v1, :cond_3

    .line 282
    iget-object v1, p0, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;->mCurrentChildView:Landroid/view/View;

    invoke-direct {p0, v1, v0}, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;->setViewPressedBG(Landroid/view/View;Z)V

    .line 283
    iget-object v1, p0, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;->mCurrentChildView:Landroid/view/View;

    iget v2, p0, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;->mCurrentChildIndex:I

    const-wide/16 v3, -0x1

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;->gainChildViewPressing(Landroid/view/View;IJ)V

    .line 288
    :cond_3
    :goto_2
    iget-boolean v1, p0, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;->isLongPressedMode:Z

    if-eqz v1, :cond_0

    goto :goto_1

    .line 286
    :cond_4
    invoke-direct {p0, v3, v2}, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;->releaseCurrentChildView(ILandroid/view/View;)Z

    goto :goto_2

    .line 293
    :pswitch_3
    iget-boolean v0, p0, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;->hasLongPressing:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;->isLongPressedMode:Z

    if-nez v0, :cond_6

    .line 294
    :cond_5
    if-eqz v2, :cond_6

    if-ltz v3, :cond_6

    .line 295
    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    const/4 v1, 0x0

    int-to-long v4, v3

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 301
    :cond_6
    :pswitch_4
    invoke-direct {p0, v3, v2}, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;->releaseCurrentChildView(ILandroid/view/View;)Z

    .line 302
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;->setLongPressMode(Z)V

    goto :goto_0

    .line 259
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public pointToPosition(II)I
    .locals 4

    .prologue
    .line 230
    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;->mTouchFrame:Landroid/graphics/Rect;

    .line 231
    if-nez v0, :cond_0

    .line 232
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;->mTouchFrame:Landroid/graphics/Rect;

    .line 233
    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;->mTouchFrame:Landroid/graphics/Rect;

    .line 236
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;->getChildCount()I

    move-result v1

    .line 237
    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-gez v1, :cond_1

    .line 246
    const/4 v0, -0x1

    :goto_1
    return v0

    .line 238
    :cond_1
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 239
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    .line 240
    invoke-virtual {v2, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 241
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 242
    goto :goto_1

    .line 237
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public setAdapter(Lcom/alipay/mobile/emotion/adapter/CustomGridAdapter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/emotion/adapter/CustomGridAdapter",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 58
    if-nez p1, :cond_0

    .line 59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "adapter should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    iput-object p1, p0, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;->mGridListAdapter:Lcom/alipay/mobile/emotion/adapter/CustomGridAdapter;

    .line 62
    invoke-virtual {p1, p0}, Lcom/alipay/mobile/emotion/adapter/CustomGridAdapter;->registerView(Lcom/alipay/mobile/emotion/widget/CustomGridLayout;)V

    .line 63
    invoke-virtual {p1}, Lcom/alipay/mobile/emotion/adapter/CustomGridAdapter;->displayBlocks()V

    .line 64
    return-void
.end method

.method public setChangeBGHandler(Lcom/alipay/mobile/emotion/widget/ChangeBGHandler;)V
    .locals 0

    .prologue
    .line 333
    iput-object p1, p0, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;->mChangeBGHandler:Lcom/alipay/mobile/emotion/widget/ChangeBGHandler;

    .line 334
    return-void
.end method

.method public setInterceptableView(Lcom/alipay/mobile/emotion/widget/Interceptable;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;->mInterceptableView:Lcom/alipay/mobile/emotion/widget/Interceptable;

    .line 201
    return-void
.end method

.method public setNumColumns(I)V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;->mGridListAdapter:Lcom/alipay/mobile/emotion/adapter/CustomGridAdapter;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/emotion/adapter/CustomGridAdapter;->setColumnNum(I)V

    .line 209
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 89
    return-void
.end method

.method public setOnItemPressingListener(Lcom/alipay/mobile/emotion/view/AbsEmotionPanel$OnItemPressingListener;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;->mOnItemPressingLister:Lcom/alipay/mobile/emotion/view/AbsEmotionPanel$OnItemPressingListener;

    .line 221
    return-void
.end method

.method public setmLayoutInflater(Landroid/view/LayoutInflater;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/alipay/mobile/emotion/widget/CustomGridLayout;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 217
    return-void
.end method
