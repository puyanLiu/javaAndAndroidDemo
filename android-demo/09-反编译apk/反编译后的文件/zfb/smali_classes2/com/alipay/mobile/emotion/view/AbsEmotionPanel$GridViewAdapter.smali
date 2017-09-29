.class public Lcom/alipay/mobile/emotion/view/AbsEmotionPanel$GridViewAdapter;
.super Lcom/alipay/mobile/emotion/adapter/CustomGridAdapter;
.source "AbsEmotionPanel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/mobile/emotion/adapter/CustomGridAdapter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private mItemHeight:I

.field private mItemWidth:I

.field private pageIndex:I

.field final synthetic this$0:Lcom/alipay/mobile/emotion/view/AbsEmotionPanel;

.field private totalCount:I


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/emotion/view/AbsEmotionPanel;IIII)V
    .locals 4

    .prologue
    .line 131
    iput-object p1, p0, Lcom/alipay/mobile/emotion/view/AbsEmotionPanel$GridViewAdapter;->this$0:Lcom/alipay/mobile/emotion/view/AbsEmotionPanel;

    .line 132
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/emotion/adapter/CustomGridAdapter;-><init>(Landroid/app/Activity;)V

    .line 129
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/emotion/view/AbsEmotionPanel$GridViewAdapter;->totalCount:I

    .line 133
    iput p3, p0, Lcom/alipay/mobile/emotion/view/AbsEmotionPanel$GridViewAdapter;->mItemHeight:I

    .line 134
    iput p2, p0, Lcom/alipay/mobile/emotion/view/AbsEmotionPanel$GridViewAdapter;->mItemWidth:I

    .line 135
    invoke-virtual {p1}, Lcom/alipay/mobile/emotion/view/AbsEmotionPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 136
    invoke-virtual {p1}, Lcom/alipay/mobile/emotion/view/AbsEmotionPanel;->getGridViewMargin()I

    move-result v1

    .line 135
    sub-int/2addr v0, v1

    .line 136
    mul-int v1, p4, p2

    .line 135
    sub-int/2addr v0, v1

    .line 136
    add-int/lit8 v1, p4, -0x1

    .line 135
    div-int/2addr v0, v1

    .line 137
    if-gez v0, :cond_1

    .line 138
    invoke-virtual {p1}, Lcom/alipay/mobile/emotion/view/AbsEmotionPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 139
    invoke-virtual {p1}, Lcom/alipay/mobile/emotion/view/AbsEmotionPanel;->getGridViewMargin()I

    move-result v2

    .line 138
    sub-int/2addr v1, v2

    div-int/2addr v1, p4

    .line 140
    iget v2, p0, Lcom/alipay/mobile/emotion/view/AbsEmotionPanel$GridViewAdapter;->mItemWidth:I

    iget v3, p0, Lcom/alipay/mobile/emotion/view/AbsEmotionPanel$GridViewAdapter;->mItemHeight:I

    if-ne v2, v3, :cond_0

    .line 141
    iput v1, p0, Lcom/alipay/mobile/emotion/view/AbsEmotionPanel$GridViewAdapter;->mItemHeight:I

    .line 143
    :cond_0
    iget v1, p0, Lcom/alipay/mobile/emotion/view/AbsEmotionPanel$GridViewAdapter;->mItemHeight:I

    iput v1, p0, Lcom/alipay/mobile/emotion/view/AbsEmotionPanel$GridViewAdapter;->mItemWidth:I

    .line 145
    :cond_1
    iget v1, p0, Lcom/alipay/mobile/emotion/view/AbsEmotionPanel$GridViewAdapter;->mItemWidth:I

    iget v2, p0, Lcom/alipay/mobile/emotion/view/AbsEmotionPanel$GridViewAdapter;->mItemHeight:I

    invoke-super {p0, v1, v2}, Lcom/alipay/mobile/emotion/adapter/CustomGridAdapter;->setBlockSize(II)V

    .line 146
    invoke-super {p0, p4}, Lcom/alipay/mobile/emotion/adapter/CustomGridAdapter;->setColumnNum(I)V

    .line 147
    invoke-super {p0, v0, p5}, Lcom/alipay/mobile/emotion/adapter/CustomGridAdapter;->setSpace(II)V

    .line 148
    return-void
.end method


# virtual methods
.method public getItemId(I)J
    .locals 2

    .prologue
    .line 164
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    .line 152
    iget v0, p0, Lcom/alipay/mobile/emotion/view/AbsEmotionPanel$GridViewAdapter;->totalCount:I

    if-gtz v0, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/view/AbsEmotionPanel$GridViewAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/emotion/view/AbsEmotionPanel$GridViewAdapter;->totalCount:I

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/AbsEmotionPanel$GridViewAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 157
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/AbsEmotionPanel$GridViewAdapter;->this$0:Lcom/alipay/mobile/emotion/view/AbsEmotionPanel;

    iget v1, p0, Lcom/alipay/mobile/emotion/view/AbsEmotionPanel$GridViewAdapter;->pageIndex:I

    iget v3, p0, Lcom/alipay/mobile/emotion/view/AbsEmotionPanel$GridViewAdapter;->totalCount:I

    move v2, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/emotion/view/AbsEmotionPanel;->getGridItemView(IIILandroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 158
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    iget v2, p0, Lcom/alipay/mobile/emotion/view/AbsEmotionPanel$GridViewAdapter;->mItemWidth:I

    iget v3, p0, Lcom/alipay/mobile/emotion/view/AbsEmotionPanel$GridViewAdapter;->mItemHeight:I

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    return-object v0
.end method
