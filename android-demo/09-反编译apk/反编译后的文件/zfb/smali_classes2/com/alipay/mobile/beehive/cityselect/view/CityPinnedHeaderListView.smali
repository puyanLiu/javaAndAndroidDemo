.class public Lcom/alipay/mobile/beehive/cityselect/view/CityPinnedHeaderListView;
.super Landroid/widget/ListView;
.source "CityPinnedHeaderListView.java"


# static fields
.field private static final MAX_ALPHA:I = 0xff


# instance fields
.field private mAdapter:Lcom/alipay/mobile/beehive/cityselect/view/CityPinnedHeaderListView$PinnedHeaderAdapter;

.field private mHeaderView:Landroid/view/View;

.field private mHeaderViewHeight:I

.field private mHeaderViewVisible:Z

.field private mHeaderViewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method


# virtual methods
.method public configureHeaderView(I)V
    .locals 7

    .prologue
    const/16 v0, 0xff

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 80
    iget-object v1, p0, Lcom/alipay/mobile/beehive/cityselect/view/CityPinnedHeaderListView;->mHeaderView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/beehive/cityselect/view/CityPinnedHeaderListView;->mAdapter:Lcom/alipay/mobile/beehive/cityselect/view/CityPinnedHeaderListView$PinnedHeaderAdapter;

    if-nez v1, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v3, "CityPinnedHeaderListView"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "pfq CityPinnedHeaderListView id = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v1, p0, Lcom/alipay/mobile/beehive/cityselect/view/CityPinnedHeaderListView;->mAdapter:Lcom/alipay/mobile/beehive/cityselect/view/CityPinnedHeaderListView$PinnedHeaderAdapter;

    invoke-interface {v1, p1}, Lcom/alipay/mobile/beehive/cityselect/view/CityPinnedHeaderListView$PinnedHeaderAdapter;->getPinnedHeaderState(I)I

    move-result v1

    .line 86
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 88
    :pswitch_0
    iput-boolean v2, p0, Lcom/alipay/mobile/beehive/cityselect/view/CityPinnedHeaderListView;->mHeaderViewVisible:Z

    goto :goto_0

    .line 93
    :pswitch_1
    iget-object v1, p0, Lcom/alipay/mobile/beehive/cityselect/view/CityPinnedHeaderListView;->mAdapter:Lcom/alipay/mobile/beehive/cityselect/view/CityPinnedHeaderListView$PinnedHeaderAdapter;

    iget-object v3, p0, Lcom/alipay/mobile/beehive/cityselect/view/CityPinnedHeaderListView;->mHeaderView:Landroid/view/View;

    invoke-interface {v1, v3, p1, v0}, Lcom/alipay/mobile/beehive/cityselect/view/CityPinnedHeaderListView$PinnedHeaderAdapter;->configurePinnedHeader(Landroid/view/View;II)V

    .line 94
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/view/CityPinnedHeaderListView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-eqz v0, :cond_2

    .line 95
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/view/CityPinnedHeaderListView;->mHeaderView:Landroid/view/View;

    iget v1, p0, Lcom/alipay/mobile/beehive/cityselect/view/CityPinnedHeaderListView;->mHeaderViewWidth:I

    iget v3, p0, Lcom/alipay/mobile/beehive/cityselect/view/CityPinnedHeaderListView;->mHeaderViewHeight:I

    invoke-virtual {v0, v2, v2, v1, v3}, Landroid/view/View;->layout(IIII)V

    .line 97
    :cond_2
    iput-boolean v6, p0, Lcom/alipay/mobile/beehive/cityselect/view/CityPinnedHeaderListView;->mHeaderViewVisible:Z

    goto :goto_0

    .line 102
    :pswitch_2
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/beehive/cityselect/view/CityPinnedHeaderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 103
    if-eqz v1, :cond_0

    .line 104
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 107
    iget-object v3, p0, Lcom/alipay/mobile/beehive/cityselect/view/CityPinnedHeaderListView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 110
    if-ge v1, v3, :cond_4

    .line 111
    sub-int/2addr v1, v3

    .line 112
    add-int v0, v3, v1

    mul-int/lit16 v0, v0, 0xff

    div-int/2addr v0, v3

    .line 117
    :goto_1
    iget-object v3, p0, Lcom/alipay/mobile/beehive/cityselect/view/CityPinnedHeaderListView;->mAdapter:Lcom/alipay/mobile/beehive/cityselect/view/CityPinnedHeaderListView$PinnedHeaderAdapter;

    iget-object v4, p0, Lcom/alipay/mobile/beehive/cityselect/view/CityPinnedHeaderListView;->mHeaderView:Landroid/view/View;

    invoke-interface {v3, v4, p1, v0}, Lcom/alipay/mobile/beehive/cityselect/view/CityPinnedHeaderListView$PinnedHeaderAdapter;->configurePinnedHeader(Landroid/view/View;II)V

    .line 118
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/view/CityPinnedHeaderListView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 119
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/view/CityPinnedHeaderListView;->mHeaderView:Landroid/view/View;

    iget v3, p0, Lcom/alipay/mobile/beehive/cityselect/view/CityPinnedHeaderListView;->mHeaderViewWidth:I

    iget v4, p0, Lcom/alipay/mobile/beehive/cityselect/view/CityPinnedHeaderListView;->mHeaderViewHeight:I

    add-int/2addr v4, v1

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 121
    :cond_3
    iput-boolean v6, p0, Lcom/alipay/mobile/beehive/cityselect/view/CityPinnedHeaderListView;->mHeaderViewVisible:Z

    goto :goto_0

    :cond_4
    move v1, v2

    .line 115
    goto :goto_1

    .line 86
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    .line 128
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 129
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/cityselect/view/CityPinnedHeaderListView;->mHeaderViewVisible:Z

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/view/CityPinnedHeaderListView;->mHeaderView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/cityselect/view/CityPinnedHeaderListView;->getDrawingTime()J

    move-result-wide v1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/alipay/mobile/beehive/cityselect/view/CityPinnedHeaderListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 134
    :goto_0
    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/view/CityPinnedHeaderListView;->mHeaderView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 50
    invoke-super/range {p0 .. p5}, Landroid/widget/ListView;->onLayout(ZIIII)V

    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/view/CityPinnedHeaderListView;->mHeaderView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/view/CityPinnedHeaderListView;->mHeaderView:Landroid/view/View;

    iget v1, p0, Lcom/alipay/mobile/beehive/cityselect/view/CityPinnedHeaderListView;->mHeaderViewWidth:I

    iget v2, p0, Lcom/alipay/mobile/beehive/cityselect/view/CityPinnedHeaderListView;->mHeaderViewHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 53
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/cityselect/view/CityPinnedHeaderListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/cityselect/view/CityPinnedHeaderListView;->configureHeaderView(I)V

    .line 55
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .prologue
    .line 58
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/view/CityPinnedHeaderListView;->mHeaderView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/view/CityPinnedHeaderListView;->mHeaderView:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Lcom/alipay/mobile/beehive/cityselect/view/CityPinnedHeaderListView;->measureChild(Landroid/view/View;II)V

    .line 61
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/view/CityPinnedHeaderListView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/beehive/cityselect/view/CityPinnedHeaderListView;->mHeaderViewWidth:I

    .line 62
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/view/CityPinnedHeaderListView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/beehive/cityselect/view/CityPinnedHeaderListView;->mHeaderViewHeight:I

    .line 64
    :cond_0
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 76
    check-cast p1, Lcom/alipay/mobile/beehive/cityselect/view/CityPinnedHeaderListView$PinnedHeaderAdapter;

    iput-object p1, p0, Lcom/alipay/mobile/beehive/cityselect/view/CityPinnedHeaderListView;->mAdapter:Lcom/alipay/mobile/beehive/cityselect/view/CityPinnedHeaderListView$PinnedHeaderAdapter;

    .line 77
    return-void
.end method

.method public setPinnedHeaderView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 67
    iput-object p1, p0, Lcom/alipay/mobile/beehive/cityselect/view/CityPinnedHeaderListView;->mHeaderView:Landroid/view/View;

    .line 68
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/view/CityPinnedHeaderListView;->mHeaderView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 69
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/cityselect/view/CityPinnedHeaderListView;->setFadingEdgeLength(I)V

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/cityselect/view/CityPinnedHeaderListView;->requestLayout()V

    .line 72
    return-void
.end method
