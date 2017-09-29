.class public Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "HorizontalListView.java"


# instance fields
.field a:I

.field b:J

.field c:I

.field d:Z


# direct methods
.method public constructor <init>(II)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, -0x2

    .line 5653
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 5633
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$LayoutParams;->b:J

    .line 5655
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$LayoutParams;->width:I

    if-ne v0, v3, :cond_0

    .line 5656
    iput v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$LayoutParams;->width:I

    .line 5662
    :cond_0
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$LayoutParams;->height:I

    if-ne v0, v3, :cond_1

    .line 5663
    iput v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$LayoutParams;->height:I

    .line 5668
    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 5671
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5633
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$LayoutParams;->b:J

    .line 5673
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$LayoutParams;->width:I

    if-ne v0, v2, :cond_0

    .line 5674
    iput v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$LayoutParams;->width:I

    .line 5680
    :cond_0
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$LayoutParams;->height:I

    if-ne v0, v2, :cond_1

    .line 5681
    const/4 v0, -0x2

    iput v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$LayoutParams;->height:I

    .line 5686
    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, -0x2

    .line 5689
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5633
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$LayoutParams;->b:J

    .line 5691
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$LayoutParams;->width:I

    if-ne v0, v3, :cond_0

    .line 5692
    iput v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$LayoutParams;->width:I

    .line 5698
    :cond_0
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$LayoutParams;->height:I

    if-ne v0, v3, :cond_1

    .line 5699
    iput v2, p0, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView$LayoutParams;->height:I

    .line 5704
    :cond_1
    return-void
.end method
