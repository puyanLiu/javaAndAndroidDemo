.class Lcom/alipay/mobile/emotion/drag/DragSortListView$HeightCache;
.super Ljava/lang/Object;
.source "DragSortListView.java"


# instance fields
.field private mMap:Landroid/util/SparseIntArray;

.field private mMaxSize:I

.field private mOrder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/alipay/mobile/emotion/drag/DragSortListView;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/emotion/drag/DragSortListView;I)V
    .locals 1

    .prologue
    .line 693
    iput-object p1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$HeightCache;->this$0:Lcom/alipay/mobile/emotion/drag/DragSortListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 694
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0, p2}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$HeightCache;->mMap:Landroid/util/SparseIntArray;

    .line 695
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$HeightCache;->mOrder:Ljava/util/ArrayList;

    .line 696
    iput p2, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$HeightCache;->mMaxSize:I

    .line 697
    return-void
.end method


# virtual methods
.method public add(II)V
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 703
    iget-object v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$HeightCache;->mMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 704
    if-eq v0, p2, :cond_1

    .line 705
    if-ne v0, v1, :cond_2

    .line 706
    iget-object v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$HeightCache;->mMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    iget v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$HeightCache;->mMaxSize:I

    if-ne v0, v1, :cond_0

    .line 708
    iget-object v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$HeightCache;->mMap:Landroid/util/SparseIntArray;

    iget-object v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$HeightCache;->mOrder:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->delete(I)V

    .line 714
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$HeightCache;->mMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 715
    iget-object v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$HeightCache;->mOrder:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 717
    :cond_1
    return-void

    .line 712
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$HeightCache;->mOrder:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 724
    iget-object v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$HeightCache;->mMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 725
    iget-object v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$HeightCache;->mOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 726
    return-void
.end method

.method public get(I)I
    .locals 2

    .prologue
    .line 720
    iget-object v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$HeightCache;->mMap:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method
