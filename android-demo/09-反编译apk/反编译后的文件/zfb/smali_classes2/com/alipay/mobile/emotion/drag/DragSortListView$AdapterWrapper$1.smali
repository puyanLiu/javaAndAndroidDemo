.class Lcom/alipay/mobile/emotion/drag/DragSortListView$AdapterWrapper$1;
.super Landroid/database/DataSetObserver;
.source "DragSortListView.java"


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/emotion/drag/DragSortListView$AdapterWrapper;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/emotion/drag/DragSortListView$AdapterWrapper;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$AdapterWrapper$1;->this$1:Lcom/alipay/mobile/emotion/drag/DragSortListView$AdapterWrapper;

    .line 488
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$AdapterWrapper$1;->this$1:Lcom/alipay/mobile/emotion/drag/DragSortListView$AdapterWrapper;

    invoke-virtual {v0}, Lcom/alipay/mobile/emotion/drag/DragSortListView$AdapterWrapper;->notifyDataSetChanged()V

    .line 491
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$AdapterWrapper$1;->this$1:Lcom/alipay/mobile/emotion/drag/DragSortListView$AdapterWrapper;

    invoke-virtual {v0}, Lcom/alipay/mobile/emotion/drag/DragSortListView$AdapterWrapper;->notifyDataSetInvalidated()V

    .line 495
    return-void
.end method
