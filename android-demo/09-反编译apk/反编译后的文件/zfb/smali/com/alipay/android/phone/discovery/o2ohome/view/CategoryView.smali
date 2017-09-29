.class public Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryView;
.super Landroid/widget/LinearLayout;
.source "CategoryView.java"


# static fields
.field private static final lineCount:I = 0x4

.field private static final totalCount:I = 0x8


# instance fields
.field private final cellsView:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryView;->cellsView:Ljava/util/List;

    .line 32
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryView;->init(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryView;->cellsView:Ljava/util/List;

    .line 37
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryView;->init(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryView;->cellsView:Ljava/util/List;

    .line 43
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryView;->init(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method private getUiData(Ljava/util/List;)Ljava/util/List;
    .locals 4

    .prologue
    .line 97
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 98
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 101
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0x8

    if-ge v0, v2, :cond_0

    .line 102
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    rsub-int/lit8 v2, v0, 0x8

    .line 103
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_1

    .line 108
    :cond_0
    return-object v1

    .line 104
    :cond_1
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 47
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryView;->context:Landroid/content/Context;

    .line 48
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryView;->setBackgroundColor(I)V

    .line 49
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryView;->setOrientation(I)V

    .line 50
    return-void
.end method


# virtual methods
.method public initCells(Ljava/util/List;Ljava/lang/String;Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView$OnCellViewClick;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v7, -0x2

    .line 66
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryView;->getUiData(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 67
    invoke-virtual {p0}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryView;->removeAllViews()V

    .line 69
    const/4 v0, 0x0

    move v2, v3

    .line 70
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-lt v2, v1, :cond_0

    .line 94
    return-void

    .line 71
    :cond_0
    rem-int/lit8 v1, v2, 0x4

    if-nez v1, :cond_1

    .line 72
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryView;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 73
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v1, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    move-object v1, v0

    .line 76
    new-instance v5, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryView;->context:Landroid/content/Context;

    invoke-direct {v5, v0}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;-><init>(Landroid/content/Context;)V

    .line 77
    const/16 v0, 0x11

    invoke-virtual {v5, v0}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->setGravity(I)V

    .line 78
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v5, v0, p2}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->setData(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-virtual {v5, p3}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->setOnClickCallback(Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView$OnCellViewClick;)V

    .line 80
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 81
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    .line 82
    if-eqz v0, :cond_3

    const-string/jumbo v6, "name"

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 83
    const-string/jumbo v6, "name"

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 89
    :cond_2
    :goto_1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 90
    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 91
    invoke-virtual {v1, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryView;->cellsView:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-object v0, v1

    goto :goto_0

    .line 85
    :cond_3
    invoke-virtual {v5, p4}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public resetDatas(Ljava/util/List;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 54
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryView;->cellsView:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 55
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-lt v2, v1, :cond_0

    .line 60
    :goto_1
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryView;->cellsView:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    .line 63
    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryView;->cellsView:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3, p2}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->setData(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryView;->cellsView:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;

    const/4 v2, 0x0

    const-string/jumbo v3, ""

    invoke-virtual {v0, v2, v3}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->setData(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public updateCell(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryView;->cellsView:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 118
    return-void

    .line 112
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;

    .line 113
    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 114
    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->setCategoryImage()V

    .line 115
    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->setCategoryRedHot()V

    goto :goto_0
.end method
