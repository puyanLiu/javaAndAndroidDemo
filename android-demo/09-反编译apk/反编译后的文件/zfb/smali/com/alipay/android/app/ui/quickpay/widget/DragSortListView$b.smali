.class final Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

.field private b:Z

.field private c:J

.field private d:J

.field private e:I

.field private f:F

.field private g:J

.field private h:I

.field private i:F

.field private j:Z


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)V
    .locals 1

    .prologue
    .line 2820
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2807
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->j:Z

    .line 2821
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .prologue
    .line 2824
    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->j:Z

    if-nez v0, :cond_0

    .line 2826
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->b:Z

    .line 2827
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->j:Z

    .line 2828
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->g:J

    .line 2829
    iget-wide v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->g:J

    iput-wide v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->c:J

    .line 2830
    iput p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->h:I

    .line 2831
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    invoke-virtual {v0, p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->post(Ljava/lang/Runnable;)Z

    .line 2833
    :cond_0
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 2813
    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->j:Z

    return v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 2817
    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->j:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->h:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 2836
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    invoke-virtual {v0, p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2838
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->j:Z

    .line 2840
    return-void
.end method

.method public final run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 2848
    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->b:Z

    if-eqz v0, :cond_0

    .line 2849
    iput-boolean v9, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->j:Z

    .line 2934
    :goto_0
    return-void

    .line 2855
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getFirstVisiblePosition()I

    move-result v1

    .line 2856
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getLastVisiblePosition()I

    move-result v0

    .line 2857
    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getCount()I

    move-result v3

    .line 2858
    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getPaddingTop()I

    move-result v2

    .line 2859
    iget-object v4, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    invoke-virtual {v4}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getHeight()I

    move-result v4

    sub-int/2addr v4, v2

    iget-object v5, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    invoke-virtual {v5}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 2861
    iget-object v5, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    invoke-static {v5}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->access$600(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)I

    move-result v5

    iget-object v6, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    invoke-static {v6}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->access$2000(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)I

    move-result v6

    iget-object v7, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    invoke-static {v7}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->access$400(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 2862
    iget-object v6, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    invoke-static {v6}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->access$600(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)I

    move-result v6

    iget-object v7, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    invoke-static {v7}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->access$2000(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)I

    move-result v7

    iget-object v8, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    invoke-static {v8}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->access$400(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)I

    move-result v8

    sub-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 2864
    iget v7, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->h:I

    if-nez v7, :cond_4

    .line 2865
    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    invoke-virtual {v3, v9}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2867
    if-nez v3, :cond_1

    .line 2868
    iput-boolean v9, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->j:Z

    goto :goto_0

    .line 2871
    :cond_1
    if-nez v1, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    if-ne v3, v2, :cond_2

    .line 2872
    iput-boolean v9, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->j:Z

    goto :goto_0

    .line 2876
    :cond_2
    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    invoke-static {v3}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->access$2300(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$DragScrollProfile;

    move-result-object v3

    iget-object v5, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    invoke-static {v5}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->access$2100(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)F

    move-result v5

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    invoke-static {v6}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->access$2200(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)F

    move-result v6

    div-float/2addr v5, v6

    iget-wide v6, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->c:J

    invoke-interface {v3, v5}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$DragScrollProfile;->a(F)F

    move-result v3

    iput v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->i:F

    .line 2893
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->d:J

    .line 2894
    iget-wide v5, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->d:J

    iget-wide v7, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->c:J

    sub-long/2addr v5, v7

    long-to-float v3, v5

    iput v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->f:F

    .line 2900
    iget v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->i:F

    iget v5, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->f:F

    mul-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->e:I

    .line 2903
    iget v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->e:I

    if-ltz v3, :cond_7

    .line 2904
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->e:I

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->e:I

    move v0, v1

    .line 2911
    :goto_2
    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    sub-int v1, v0, v1

    invoke-virtual {v3, v1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2912
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v1

    iget v4, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->e:I

    add-int/2addr v1, v4

    .line 2914
    if-nez v0, :cond_3

    if-le v1, v2, :cond_3

    move v1, v2

    .line 2919
    :cond_3
    iget-object v4, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->access$2602(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;Z)Z

    .line 2921
    iget-object v4, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    sub-int/2addr v1, v2

    invoke-virtual {v4, v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->setSelectionFromTop(II)V

    .line 2922
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    invoke-virtual {v1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->layoutChildren()V

    .line 2923
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    invoke-virtual {v1}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->invalidate()V

    .line 2925
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    invoke-static {v1, v9}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->access$2602(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;Z)Z

    .line 2928
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    invoke-static {v1, v0, v3, v9}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->access$2700(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;ILandroid/view/View;Z)V

    .line 2930
    iget-wide v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->d:J

    iput-wide v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->c:J

    .line 2933
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    invoke-virtual {v0, p0}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 2879
    :cond_4
    iget-object v6, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    sub-int v7, v0, v1

    invoke-virtual {v6, v7}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2880
    if-nez v6, :cond_5

    .line 2881
    iput-boolean v9, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->j:Z

    goto/16 :goto_0

    .line 2884
    :cond_5
    add-int/lit8 v3, v3, -0x1

    if-ne v0, v3, :cond_6

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int v6, v4, v2

    if-gt v3, v6, :cond_6

    .line 2885
    iput-boolean v9, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->j:Z

    goto/16 :goto_0

    .line 2889
    :cond_6
    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    invoke-static {v3}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->access$2300(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$DragScrollProfile;

    move-result-object v3

    int-to-float v5, v5

    iget-object v6, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    invoke-static {v6}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->access$2400(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)F

    move-result v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->a:Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;

    invoke-static {v6}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;->access$2500(Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView;)F

    move-result v6

    div-float/2addr v5, v6

    iget-wide v6, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->c:J

    invoke-interface {v3, v5}, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$DragScrollProfile;->a(F)F

    move-result v3

    neg-float v3, v3

    iput v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->i:F

    goto/16 :goto_1

    .line 2907
    :cond_7
    neg-int v3, v4

    iget v4, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->e:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$b;->e:I

    goto/16 :goto_2
.end method
