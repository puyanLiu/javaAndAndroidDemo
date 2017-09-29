.class Lcom/alipay/mobile/emotion/drag/DragSortListView$AdapterWrapper;
.super Landroid/widget/BaseAdapter;
.source "DragSortListView.java"


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field final synthetic this$0:Lcom/alipay/mobile/emotion/drag/DragSortListView;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/emotion/drag/DragSortListView;Landroid/widget/ListAdapter;)V
    .locals 2

    .prologue
    .line 484
    iput-object p1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$AdapterWrapper;->this$0:Lcom/alipay/mobile/emotion/drag/DragSortListView;

    .line 485
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 486
    iput-object p2, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    .line 488
    iget-object v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    new-instance v1, Lcom/alipay/mobile/emotion/drag/DragSortListView$AdapterWrapper$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView$AdapterWrapper$1;-><init>(Lcom/alipay/mobile/emotion/drag/DragSortListView$AdapterWrapper;)V

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 497
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 505
    iget-object v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 555
    if-eqz p2, :cond_2

    .line 556
    check-cast p2, Lcom/alipay/mobile/emotion/drag/DragSortItemView;

    .line 557
    invoke-virtual {p2, v3}, Lcom/alipay/mobile/emotion/drag/DragSortItemView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 559
    iget-object v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    .line 560
    iget-object v2, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$AdapterWrapper;->this$0:Lcom/alipay/mobile/emotion/drag/DragSortListView;

    .line 559
    invoke-interface {v1, p1, v0, v2}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 561
    if-eq v1, v0, :cond_1

    .line 564
    if-eqz v0, :cond_0

    .line 565
    invoke-virtual {p2, v3}, Lcom/alipay/mobile/emotion/drag/DragSortItemView;->removeViewAt(I)V

    .line 567
    :cond_0
    invoke-virtual {p2, v1}, Lcom/alipay/mobile/emotion/drag/DragSortItemView;->addView(Landroid/view/View;)V

    .line 580
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$AdapterWrapper;->this$0:Lcom/alipay/mobile/emotion/drag/DragSortListView;

    iget-object v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$AdapterWrapper;->this$0:Lcom/alipay/mobile/emotion/drag/DragSortListView;

    invoke-virtual {v1}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getHeaderViewsCount()I

    move-result v1

    add-int/2addr v1, p1

    const/4 v2, 0x1

    invoke-static {v0, v1, p2, v2}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->access$1(Lcom/alipay/mobile/emotion/drag/DragSortListView;ILandroid/view/View;Z)V

    .line 582
    return-object p2

    .line 570
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$AdapterWrapper;->this$0:Lcom/alipay/mobile/emotion/drag/DragSortListView;

    invoke-interface {v0, p1, v1, v2}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 571
    new-instance p2, Lcom/alipay/mobile/emotion/drag/DragSortItemView;

    iget-object v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$AdapterWrapper;->this$0:Lcom/alipay/mobile/emotion/drag/DragSortListView;

    invoke-virtual {v1}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v1}, Lcom/alipay/mobile/emotion/drag/DragSortItemView;-><init>(Landroid/content/Context;)V

    .line 572
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    .line 573
    const/4 v2, -0x1

    .line 574
    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 572
    invoke-virtual {p2, v1}, Lcom/alipay/mobile/emotion/drag/DragSortItemView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 575
    invoke-virtual {p2, v0}, Lcom/alipay/mobile/emotion/drag/DragSortItemView;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    return v0
.end method
