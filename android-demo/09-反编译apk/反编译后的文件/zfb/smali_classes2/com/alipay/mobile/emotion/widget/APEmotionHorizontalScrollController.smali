.class public Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;
.super Ljava/lang/Object;
.source "APEmotionHorizontalScrollController.java"


# instance fields
.field private final inner:Landroid/view/View;

.field private mAdapter:Landroid/widget/BaseAdapter;

.field private final mDataObserver:Landroid/database/DataSetObserver;

.field private final mScreenWidth:I

.field private final oneTabWidth:I

.field private final scrollview:Lcom/alipay/mobile/commonui/widget/APHorizontalScrollView;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/commonui/widget/APHorizontalScrollView;Landroid/view/View;II)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController$1;-><init>(Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;)V

    iput-object v0, p0, Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;->mDataObserver:Landroid/database/DataSetObserver;

    .line 22
    iput-object p2, p0, Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;->inner:Landroid/view/View;

    .line 23
    iput-object p1, p0, Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;->scrollview:Lcom/alipay/mobile/commonui/widget/APHorizontalScrollView;

    .line 24
    iput p3, p0, Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;->mScreenWidth:I

    .line 25
    iput p4, p0, Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;->oneTabWidth:I

    .line 26
    invoke-virtual {p2, v1, v1, p4, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 27
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;->addView()V

    return-void
.end method

.method static synthetic access$1(Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;)Lcom/alipay/mobile/commonui/widget/APHorizontalScrollView;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;->scrollview:Lcom/alipay/mobile/commonui/widget/APHorizontalScrollView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;)I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;->oneTabWidth:I

    return v0
.end method

.method static synthetic access$3(Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;)Landroid/view/View;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;->inner:Landroid/view/View;

    return-object v0
.end method

.method private addView()V
    .locals 4

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;->inner:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;->mAdapter:Landroid/widget/BaseAdapter;

    if-nez v0, :cond_1

    .line 57
    :cond_0
    return-void

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;->inner:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;->inner:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 52
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 53
    iget-object v2, p0, Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;->mAdapter:Landroid/widget/BaseAdapter;

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;->inner:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v2, v1, v3, v0}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 54
    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;->inner:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 52
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method public addView(I)V
    .locals 3

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;->inner:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;->mAdapter:Landroid/widget/BaseAdapter;

    if-nez v0, :cond_1

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    if-ltz p1, :cond_0

    .line 76
    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    if-le p1, v0, :cond_2

    .line 77
    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result p1

    .line 79
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;->inner:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 80
    iget-object v1, p0, Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;->mAdapter:Landroid/widget/BaseAdapter;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;->inner:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, p1, v2, v0}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;->scrollview:Lcom/alipay/mobile/commonui/widget/APHorizontalScrollView;

    new-instance v2, Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController$2;-><init>(Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;Landroid/view/View;I)V

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APHorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public getView(I)Landroid/view/View;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 60
    iget-object v1, p0, Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;->inner:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;->mAdapter:Landroid/widget/BaseAdapter;

    if-nez v1, :cond_1

    .line 66
    :cond_0
    :goto_0
    return-object v0

    .line 63
    :cond_1
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v1

    if-gt p1, v1, :cond_0

    .line 66
    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;->inner:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public removeViewAt(I)V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;->inner:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;->mAdapter:Landroid/widget/BaseAdapter;

    if-nez v0, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;->inner:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;->scrollview:Lcom/alipay/mobile/commonui/widget/APHorizontalScrollView;

    new-instance v1, Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController$3;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController$3;-><init>(Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;I)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APHorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public scrollTo(I)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 101
    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;->inner:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;->mAdapter:Landroid/widget/BaseAdapter;

    if-nez v0, :cond_1

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    iget v0, p0, Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;->oneTabWidth:I

    mul-int/2addr v0, p1

    .line 105
    iget-object v2, p0, Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;->scrollview:Lcom/alipay/mobile/commonui/widget/APHorizontalScrollView;

    invoke-virtual {v2}, Lcom/alipay/mobile/commonui/widget/APHorizontalScrollView;->getScrollX()I

    move-result v2

    iget v3, p0, Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;->oneTabWidth:I

    add-int/2addr v2, v3

    if-le v2, v0, :cond_3

    .line 106
    iget v2, p0, Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;->oneTabWidth:I

    sub-int/2addr v0, v2

    .line 107
    if-gez v0, :cond_2

    move v0, v1

    .line 110
    :cond_2
    iget-object v2, p0, Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;->scrollview:Lcom/alipay/mobile/commonui/widget/APHorizontalScrollView;

    invoke-virtual {v2, v0, v1}, Lcom/alipay/mobile/commonui/widget/APHorizontalScrollView;->scrollTo(II)V

    goto :goto_0

    .line 111
    :cond_3
    iget v2, p0, Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;->oneTabWidth:I

    add-int/2addr v2, v0

    iget-object v3, p0, Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;->scrollview:Lcom/alipay/mobile/commonui/widget/APHorizontalScrollView;

    invoke-virtual {v3}, Lcom/alipay/mobile/commonui/widget/APHorizontalScrollView;->getScrollX()I

    move-result v3

    iget v4, p0, Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;->mScreenWidth:I

    add-int/2addr v3, v4

    if-le v2, v3, :cond_0

    .line 112
    iget-object v2, p0, Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;->scrollview:Lcom/alipay/mobile/commonui/widget/APHorizontalScrollView;

    iget v3, p0, Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;->oneTabWidth:I

    add-int/2addr v0, v3

    iget v3, p0, Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;->mScreenWidth:I

    sub-int/2addr v0, v3

    invoke-virtual {v2, v0, v1}, Lcom/alipay/mobile/commonui/widget/APHorizontalScrollView;->scrollTo(II)V

    goto :goto_0
.end method

.method public setAdapter(Landroid/widget/BaseAdapter;)V
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;->mAdapter:Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;->mAdapter:Landroid/widget/BaseAdapter;

    iget-object v1, p0, Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;->mDataObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroid/widget/BaseAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 33
    :cond_0
    iput-object p1, p0, Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;->mAdapter:Landroid/widget/BaseAdapter;

    .line 34
    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;->mAdapter:Landroid/widget/BaseAdapter;

    iget-object v1, p0, Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;->mDataObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 35
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/widget/APEmotionHorizontalScrollController;->addView()V

    .line 36
    return-void
.end method
