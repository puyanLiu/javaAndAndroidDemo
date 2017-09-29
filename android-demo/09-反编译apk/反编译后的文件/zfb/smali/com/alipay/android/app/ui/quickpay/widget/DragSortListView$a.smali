.class final Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$a;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

.field private b:Landroid/widget/ListAdapter;


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;Landroid/widget/ListAdapter;)V
    .locals 2

    .prologue
    .line 613
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$a;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    .line 614
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 615
    iput-object p2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$a;->b:Landroid/widget/ListAdapter;

    .line 617
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$a;->b:Landroid/widget/ListAdapter;

    new-instance v1, Lcom/alipay/android/app/ui/quickpay/widget/f;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/app/ui/quickpay/widget/f;-><init>(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$a;Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)V

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 626
    return-void
.end method


# virtual methods
.method public final a()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 629
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$a;->b:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public final areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 649
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$a;->b:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 644
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$a;->b:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 639
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$a;->b:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    .prologue
    .line 634
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$a;->b:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 1

    .prologue
    .line 659
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$a;->b:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 685
    if-eqz p2, :cond_2

    .line 686
    check-cast p2, Lcom/alipay/android/app/ui/quickpay/widget/DragSortItemView;

    .line 687
    invoke-virtual {p2, v3}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortItemView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 689
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$a;->b:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$a;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    invoke-interface {v1, p1, v0, v2}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 690
    if-eq v1, v0, :cond_1

    .line 693
    if-eqz v0, :cond_0

    .line 694
    invoke-virtual {p2, v3}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortItemView;->removeViewAt(I)V

    .line 696
    :cond_0
    invoke-virtual {p2, v1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortItemView;->addView(Landroid/view/View;)V

    .line 713
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$a;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$a;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    invoke-virtual {v1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getHeaderViewsCount()I

    move-result v1

    add-int/2addr v1, p1

    const/4 v2, 0x1

    invoke-static {v0, v1, p2, v2}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->access$200(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;ILandroid/view/View;Z)V

    .line 715
    return-object p2

    .line 699
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$a;->b:Landroid/widget/ListAdapter;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$a;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    invoke-interface {v0, p1, v1, v2}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 700
    instance-of v0, v1, Landroid/widget/Checkable;

    if-eqz v0, :cond_3

    .line 701
    new-instance v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortItemViewCheckable;

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$a;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortItemViewCheckable;-><init>(Landroid/content/Context;)V

    .line 705
    :goto_1
    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortItemView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 708
    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortItemView;->addView(Landroid/view/View;)V

    move-object p2, v0

    goto :goto_0

    .line 703
    :cond_3
    new-instance v0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortItemView;

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$a;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortItemView;-><init>(Landroid/content/Context;)V

    goto :goto_1
.end method

.method public final getViewTypeCount()I
    .locals 1

    .prologue
    .line 664
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$a;->b:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method public final hasStableIds()Z
    .locals 1

    .prologue
    .line 669
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$a;->b:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 674
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$a;->b:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final isEnabled(I)Z
    .locals 1

    .prologue
    .line 654
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$a;->b:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    return v0
.end method
