.class final Lcom/alipay/android/app/ui/quickpay/widget/f;
.super Landroid/database/DataSetObserver;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

.field final synthetic b:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$a;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$a;Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)V
    .locals 0

    .prologue
    .line 617
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/f;->b:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$a;

    iput-object p2, p0, Lcom/alipay/android/app/ui/quickpay/widget/f;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 1

    .prologue
    .line 619
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/f;->b:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$a;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$a;->notifyDataSetChanged()V

    .line 620
    return-void
.end method

.method public final onInvalidated()V
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/f;->b:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$a;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$a;->notifyDataSetInvalidated()V

    .line 624
    return-void
.end method
