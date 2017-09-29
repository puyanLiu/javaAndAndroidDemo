.class final Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$e;
.super Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

.field private d:F

.field private e:F


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 1199
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$e;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->access$300(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$e;->d:F

    .line 1200
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$e;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->access$400(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$e;->e:F

    .line 1201
    return-void
.end method

.method public final a(F)V
    .locals 4

    .prologue
    .line 1205
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$e;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->access$100(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 1206
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$e;->d()V

    .line 1213
    :goto_0
    return-void

    .line 1208
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$e;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    iget v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$e;->e:F

    mul-float/2addr v1, p1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p1

    iget v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$e;->d:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->access$302(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;I)I

    .line 1210
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$e;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->access$500(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)Landroid/graphics/Point;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$e;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    invoke-static {v1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->access$600(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)I

    move-result v1

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$e;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    invoke-static {v2}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->access$300(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 1211
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$e;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->access$700(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;Z)V

    goto :goto_0
.end method
