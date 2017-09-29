.class final Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

.field private b:Landroid/util/SparseIntArray;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private d:I


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 842
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$d;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 843
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$d;->b:Landroid/util/SparseIntArray;

    .line 844
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$d;->c:Ljava/util/ArrayList;

    .line 845
    iput v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$d;->d:I

    .line 846
    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 2

    .prologue
    .line 869
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$d;->b:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 873
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$d;->b:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 874
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$d;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 875
    return-void
.end method

.method public final a(II)V
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 852
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$d;->b:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 853
    if-eq v0, p2, :cond_1

    .line 854
    if-ne v0, v1, :cond_2

    .line 855
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$d;->b:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    iget v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$d;->d:I

    if-ne v0, v1, :cond_0

    .line 857
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$d;->b:Landroid/util/SparseIntArray;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$d;->c:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->delete(I)V

    .line 863
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$d;->b:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 864
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$d;->c:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 866
    :cond_1
    return-void

    .line 861
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$d;->c:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
