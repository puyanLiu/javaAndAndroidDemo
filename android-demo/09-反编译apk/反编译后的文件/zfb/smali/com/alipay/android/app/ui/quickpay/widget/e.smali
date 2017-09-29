.class final Lcom/alipay/android/app/ui/quickpay/widget/e;
.super Landroid/database/DataSetObserver;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)V
    .locals 0

    .prologue
    .line 521
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/e;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 523
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/e;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->access$100(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 524
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/e;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->cancelDrag()V

    .line 526
    :cond_0
    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 0

    .prologue
    .line 530
    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/widget/e;->a()V

    .line 531
    return-void
.end method

.method public final onInvalidated()V
    .locals 0

    .prologue
    .line 535
    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/widget/e;->a()V

    .line 536
    return-void
.end method
