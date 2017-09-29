.class Lcom/alipay/mobile/emotion/drag/DragSortListView$2;
.super Landroid/database/DataSetObserver;
.source "DragSortListView.java"


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/emotion/drag/DragSortListView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/emotion/drag/DragSortListView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$2;->this$0:Lcom/alipay/mobile/emotion/drag/DragSortListView;

    .line 395
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method private cancel()V
    .locals 2

    .prologue
    .line 397
    iget-object v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$2;->this$0:Lcom/alipay/mobile/emotion/drag/DragSortListView;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->access$20(Lcom/alipay/mobile/emotion/drag/DragSortListView;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 398
    iget-object v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$2;->this$0:Lcom/alipay/mobile/emotion/drag/DragSortListView;

    invoke-virtual {v0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->cancelDrag()V

    .line 400
    :cond_0
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 0

    .prologue
    .line 404
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView$2;->cancel()V

    .line 405
    return-void
.end method

.method public onInvalidated()V
    .locals 0

    .prologue
    .line 409
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView$2;->cancel()V

    .line 410
    return-void
.end method
