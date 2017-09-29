.class final Lcom/alipay/mobile/socialsdk/api/view/n;
.super Ljava/lang/Object;
.source "HorizontalListView.java"


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

.field private b:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$RecyclerListener;

.field private c:I

.field private d:[Landroid/view/View;

.field private e:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/support/v4/util/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SparseArrayCompat",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;)V
    .locals 1

    .prologue
    .line 5707
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/api/view/n;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5710
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/n;->d:[Landroid/view/View;

    return-void
.end method

.method private static a(Ljava/util/ArrayList;I)Landroid/view/View;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 5993
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 5994
    if-gtz v3, :cond_0

    .line 5995
    const/4 v0, 0x0

    .line 6008
    :goto_0
    return-object v0

    .line 5998
    :cond_0
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-lt v2, v3, :cond_1

    .line 6008
    add-int/lit8 v0, v3, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    .line 5999
    :cond_1
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 6000
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$LayoutParams;

    .line 6002
    iget v1, v1, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$LayoutParams;->c:I

    if-ne v1, p1, :cond_2

    .line 6003
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 5998
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1
.end method

.method static synthetic a(Lcom/alipay/mobile/socialsdk/api/view/n;Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$RecyclerListener;)V
    .locals 0

    .prologue
    .line 5708
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/api/view/n;->b:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$RecyclerListener;

    return-void
.end method

.method private e()V
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 5951
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/n;->d:[Landroid/view/View;

    array-length v5, v0

    .line 5952
    iget v6, p0, Lcom/alipay/mobile/socialsdk/api/view/n;->f:I

    .line 5953
    iget-object v7, p0, Lcom/alipay/mobile/socialsdk/api/view/n;->e:[Ljava/util/ArrayList;

    move v4, v1

    .line 5955
    :goto_0
    if-lt v4, v6, :cond_1

    .line 5967
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/n;->h:Landroid/support/v4/util/SparseArrayCompat;

    if-eqz v0, :cond_0

    .line 5968
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/n;->h:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v0

    if-lt v1, v0, :cond_3

    .line 5976
    :cond_0
    return-void

    .line 5956
    :cond_1
    aget-object v8, v7, v4

    .line 5957
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5958
    sub-int v9, v0, v5

    .line 5960
    add-int/lit8 v0, v0, -0x1

    move v2, v1

    .line 5962
    :goto_2
    if-lt v2, v9, :cond_2

    .line 5955
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 5963
    :cond_2
    iget-object v10, p0, Lcom/alipay/mobile/socialsdk/api/view/n;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v10, v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->a(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;Landroid/view/View;)V

    .line 5962
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    goto :goto_2

    .line 5969
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/n;->h:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 5970
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->hasTransientState(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 5971
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/n;->h:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SparseArrayCompat;->removeAt(I)V

    .line 5972
    add-int/lit8 v1, v1, -0x1

    .line 5968
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 5733
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/n;->f:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 5734
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/api/view/n;->g:Ljava/util/ArrayList;

    .line 5735
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v1

    .line 5737
    :goto_0
    if-lt v2, v4, :cond_2

    .line 5752
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/n;->h:Landroid/support/v4/util/SparseArrayCompat;

    if-eqz v0, :cond_1

    .line 5753
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/n;->h:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v2

    .line 5754
    :goto_1
    if-lt v1, v2, :cond_5

    .line 5758
    :cond_1
    return-void

    .line 5738
    :cond_2
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->forceLayout()V

    .line 5737
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 5741
    :cond_3
    iget v4, p0, Lcom/alipay/mobile/socialsdk/api/view/n;->f:I

    move v3, v1

    .line 5742
    :goto_2
    if-ge v3, v4, :cond_0

    .line 5743
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/n;->e:[Ljava/util/ArrayList;

    aget-object v5, v0, v3

    .line 5744
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v2, v1

    .line 5746
    :goto_3
    if-lt v2, v6, :cond_4

    .line 5742
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    .line 5747
    :cond_4
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->forceLayout()V

    .line 5746
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    .line 5755
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/n;->h:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->forceLayout()V

    .line 5754
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public final a(I)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 5717
    if-gtz p1, :cond_0

    .line 5718
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Can\'t have a viewTypeCount < 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5722
    :cond_0
    new-array v2, p1, [Ljava/util/ArrayList;

    move v0, v1

    .line 5723
    :goto_0
    if-lt v0, p1, :cond_1

    .line 5727
    iput p1, p0, Lcom/alipay/mobile/socialsdk/api/view/n;->f:I

    .line 5728
    aget-object v0, v2, v1

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/n;->g:Ljava/util/ArrayList;

    .line 5729
    iput-object v2, p0, Lcom/alipay/mobile/socialsdk/api/view/n;->e:[Ljava/util/ArrayList;

    .line 5730
    return-void

    .line 5724
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    aput-object v3, v2, v0

    .line 5723
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method final a(II)V
    .locals 3

    .prologue
    .line 5790
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/n;->d:[Landroid/view/View;

    array-length v0, v0

    if-ge v0, p1, :cond_0

    .line 5791
    new-array v0, p1, [Landroid/view/View;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/n;->d:[Landroid/view/View;

    .line 5794
    :cond_0
    iput p2, p0, Lcom/alipay/mobile/socialsdk/api/view/n;->c:I

    .line 5796
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/api/view/n;->d:[Landroid/view/View;

    .line 5797
    const/4 v0, 0x0

    :goto_0
    if-lt v0, p1, :cond_1

    .line 5804
    return-void

    .line 5798
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/api/view/n;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 5802
    aput-object v2, v1, v0

    .line 5797
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method final a(Landroid/view/View;I)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 5857
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$LayoutParams;

    .line 5858
    if-nez v0, :cond_1

    .line 5895
    :cond_0
    :goto_0
    return-void

    .line 5862
    :cond_1
    iput p2, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$LayoutParams;->c:I

    .line 5864
    iget v2, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$LayoutParams;->a:I

    .line 5865
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->hasTransientState(Landroid/view/View;)Z

    move-result v3

    .line 5868
    if-ltz v2, :cond_4

    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    if-eqz v3, :cond_5

    .line 5869
    :cond_2
    if-eqz v3, :cond_0

    .line 5870
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/n;->h:Landroid/support/v4/util/SparseArrayCompat;

    if-nez v0, :cond_3

    .line 5871
    new-instance v0, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {v0}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/n;->h:Landroid/support/v4/util/SparseArrayCompat;

    .line 5874
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/n;->h:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, p2, p1}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 5868
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 5880
    :cond_5
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/n;->f:I

    if-ne v0, v1, :cond_7

    .line 5881
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/n;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5888
    :goto_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_6

    .line 5889
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 5892
    :cond_6
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/n;->b:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$RecyclerListener;

    if-eqz v0, :cond_0

    .line 5893
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/n;->b:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$RecyclerListener;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    goto :goto_0

    .line 5883
    :cond_7
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/n;->e:[Ljava/util/ArrayList;

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method final b(I)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 5807
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/n;->c:I

    sub-int v2, p1, v0

    .line 5808
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/api/view/n;->d:[Landroid/view/View;

    .line 5810
    if-ltz v2, :cond_0

    array-length v0, v3

    if-ge v2, v0, :cond_0

    .line 5811
    aget-object v0, v3, v2

    .line 5812
    aput-object v1, v3, v2

    .line 5817
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method final b()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 5765
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/n;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 5766
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/api/view/n;->g:Ljava/util/ArrayList;

    .line 5767
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 5769
    :goto_0
    if-lt v2, v3, :cond_2

    .line 5784
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/n;->h:Landroid/support/v4/util/SparseArrayCompat;

    if-eqz v0, :cond_1

    .line 5785
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/n;->h:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->clear()V

    .line 5787
    :cond_1
    return-void

    .line 5770
    :cond_2
    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/api/view/n;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    add-int/lit8 v0, v3, -0x1

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v4, v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->a(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;Landroid/view/View;)V

    .line 5769
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5773
    :cond_3
    iget v4, p0, Lcom/alipay/mobile/socialsdk/api/view/n;->f:I

    move v3, v2

    .line 5774
    :goto_1
    if-ge v3, v4, :cond_0

    .line 5775
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/n;->e:[Ljava/util/ArrayList;

    aget-object v5, v0, v3

    .line 5776
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v1, v2

    .line 5778
    :goto_2
    if-lt v1, v6, :cond_4

    .line 5774
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 5779
    :cond_4
    iget-object v7, p0, Lcom/alipay/mobile/socialsdk/api/view/n;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    add-int/lit8 v0, v6, -0x1

    sub-int/2addr v0, v1

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v7, v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->a(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;Landroid/view/View;)V

    .line 5778
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method final c(I)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 5821
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/api/view/n;->h:Landroid/support/v4/util/SparseArrayCompat;

    if-nez v1, :cond_1

    .line 5833
    :cond_0
    :goto_0
    return-object v0

    .line 5825
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/api/view/n;->h:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/SparseArrayCompat;->indexOfKey(I)I

    move-result v1

    .line 5826
    if-ltz v1, :cond_0

    .line 5830
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/n;->h:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 5831
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/api/view/n;->h:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v2, v1}, Landroid/support/v4/util/SparseArrayCompat;->removeAt(I)V

    goto :goto_0
.end method

.method final c()V
    .locals 1

    .prologue
    .line 5837
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/n;->h:Landroid/support/v4/util/SparseArrayCompat;

    if-eqz v0, :cond_0

    .line 5838
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/n;->h:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->clear()V

    .line 5840
    :cond_0
    return-void
.end method

.method final d(I)Landroid/view/View;
    .locals 2

    .prologue
    .line 5843
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/n;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 5844
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/n;->g:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/alipay/mobile/socialsdk/api/view/n;->a(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    .line 5852
    :goto_0
    return-object v0

    .line 5846
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/n;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->a(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;)Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    .line 5847
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/api/view/n;->e:[Ljava/util/ArrayList;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 5848
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/api/view/n;->e:[Ljava/util/ArrayList;

    aget-object v0, v1, v0

    invoke-static {v0, p1}, Lcom/alipay/mobile/socialsdk/api/view/n;->a(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 5852
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final d()V
    .locals 12
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 5899
    iget-object v7, p0, Lcom/alipay/mobile/socialsdk/api/view/n;->d:[Landroid/view/View;

    .line 5900
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/n;->f:I

    if-le v0, v2, :cond_0

    move v1, v2

    .line 5902
    :goto_0
    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/api/view/n;->g:Ljava/util/ArrayList;

    .line 5903
    array-length v0, v7

    .line 5905
    add-int/lit8 v0, v0, -0x1

    move v6, v0

    :goto_1
    if-gez v6, :cond_1

    .line 5947
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/api/view/n;->e()V

    .line 5948
    return-void

    :cond_0
    move v1, v3

    .line 5900
    goto :goto_0

    .line 5906
    :cond_1
    aget-object v8, v7, v6

    .line 5907
    if-eqz v8, :cond_4

    .line 5908
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$LayoutParams;

    .line 5909
    iget v9, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$LayoutParams;->a:I

    .line 5911
    aput-object v11, v7, v6

    .line 5913
    invoke-static {v8}, Landroid/support/v4/view/ViewCompat;->hasTransientState(Landroid/view/View;)Z

    move-result v10

    .line 5914
    if-ltz v9, :cond_5

    move v5, v2

    :goto_2
    if-eqz v5, :cond_2

    if-eqz v10, :cond_6

    .line 5915
    :cond_2
    if-eqz v10, :cond_4

    .line 5916
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/n;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-static {v0, v8}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->a(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;Landroid/view/View;)V

    .line 5918
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/n;->h:Landroid/support/v4/util/SparseArrayCompat;

    if-nez v0, :cond_3

    .line 5919
    new-instance v0, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {v0}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/n;->h:Landroid/support/v4/util/SparseArrayCompat;

    .line 5922
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/n;->h:Landroid/support/v4/util/SparseArrayCompat;

    iget v5, p0, Lcom/alipay/mobile/socialsdk/api/view/n;->c:I

    add-int/2addr v5, v6

    invoke-virtual {v0, v5, v8}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 5905
    :cond_4
    :goto_3
    add-int/lit8 v0, v6, -0x1

    move v6, v0

    goto :goto_1

    :cond_5
    move v5, v3

    .line 5914
    goto :goto_2

    .line 5928
    :cond_6
    if-eqz v1, :cond_7

    .line 5929
    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/api/view/n;->e:[Ljava/util/ArrayList;

    aget-object v4, v4, v9

    .line 5932
    :cond_7
    iget v5, p0, Lcom/alipay/mobile/socialsdk/api/view/n;->c:I

    add-int/2addr v5, v6

    iput v5, v0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$LayoutParams;->c:I

    .line 5933
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5937
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xe

    if-lt v0, v5, :cond_8

    .line 5938
    invoke-virtual {v8, v11}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 5941
    :cond_8
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/n;->b:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$RecyclerListener;

    if-eqz v0, :cond_4

    .line 5942
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/n;->b:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$RecyclerListener;

    invoke-interface {v0, v8}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    goto :goto_3
.end method
