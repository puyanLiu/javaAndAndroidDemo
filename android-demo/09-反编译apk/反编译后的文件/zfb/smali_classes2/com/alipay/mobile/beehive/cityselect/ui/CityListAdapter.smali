.class public Lcom/alipay/mobile/beehive/cityselect/ui/CityListAdapter;
.super Landroid/widget/BaseAdapter;
.source "CityListAdapter.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/SectionIndexer;
.implements Lcom/alipay/mobile/beehive/cityselect/view/CityPinnedHeaderListView$PinnedHeaderAdapter;


# instance fields
.field mCityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/beehive/cityselect/model/CityVO;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsSearchResult:Z

.field private mLocationPosition:I

.field private mPositions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/beehive/cityselect/model/CityVO;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/CityListAdapter;->mLocationPosition:I

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/CityListAdapter;->mIsSearchResult:Z

    .line 40
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/CityListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 41
    iput-object p2, p0, Lcom/alipay/mobile/beehive/cityselect/ui/CityListAdapter;->mCityList:Ljava/util/List;

    .line 42
    iput-object p3, p0, Lcom/alipay/mobile/beehive/cityselect/ui/CityListAdapter;->mSections:Ljava/util/List;

    .line 43
    iput-object p4, p0, Lcom/alipay/mobile/beehive/cityselect/ui/CityListAdapter;->mPositions:Ljava/util/List;

    .line 44
    return-void
.end method


# virtual methods
.method public configurePinnedHeader(Landroid/view/View;II)V
    .locals 2

    .prologue
    .line 122
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/beehive/cityselect/ui/CityListAdapter;->getSectionForPosition(I)I

    move-result v0

    .line 123
    if-gez v0, :cond_0

    .line 130
    :goto_0
    return-void

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/cityselect/ui/CityListAdapter;->getSections()[Ljava/lang/Object;

    move-result-object v1

    aget-object v0, v1, v0

    check-cast v0, Ljava/lang/String;

    .line 128
    sget v1, Lcom/alipay/mobile/beehive/R$id;->pinned_list_header_text:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 129
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/CityListAdapter;->mCityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/CityListAdapter;->mCityList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 58
    int-to-long v0, p1

    return-wide v0
.end method

.method public getPinnedHeaderState(I)I
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 104
    if-ltz p1, :cond_1

    .line 106
    iget v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/CityListAdapter;->mLocationPosition:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/CityListAdapter;->mLocationPosition:I

    if-eq v0, p1, :cond_1

    .line 107
    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/CityListAdapter;->mIsSearchResult:Z

    if-eqz v0, :cond_2

    .line 108
    :cond_1
    const/4 v0, 0x0

    .line 117
    :goto_0
    return v0

    .line 110
    :cond_2
    iput v1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/CityListAdapter;->mLocationPosition:I

    .line 111
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/beehive/cityselect/ui/CityListAdapter;->getSectionForPosition(I)I

    move-result v0

    .line 112
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/cityselect/ui/CityListAdapter;->getPositionForSection(I)I

    move-result v0

    .line 113
    if-eq v0, v1, :cond_3

    .line 114
    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_3

    .line 115
    const/4 v0, 0x2

    goto :goto_0

    .line 117
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getPositionForSection(I)I
    .locals 1

    .prologue
    .line 139
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/CityListAdapter;->mSections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 140
    :cond_0
    const/4 v0, -0x1

    .line 142
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/CityListAdapter;->mPositions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getSectionForPosition(I)I
    .locals 2

    .prologue
    .line 147
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/cityselect/ui/CityListAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_2

    .line 148
    :cond_0
    const/4 v0, -0x1

    .line 151
    :cond_1
    :goto_0
    return v0

    .line 150
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/CityListAdapter;->mPositions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 151
    if-gez v0, :cond_1

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x2

    goto :goto_0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/CityListAdapter;->mSections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/beehive/cityselect/ui/CityListAdapter;->getSectionForPosition(I)I

    move-result v2

    .line 65
    if-nez p2, :cond_0

    .line 66
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/CityListAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/alipay/mobile/beehive/R$layout;->item_city_list:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 67
    new-instance v1, Lcom/alipay/mobile/beehive/cityselect/ui/CityListAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/beehive/cityselect/ui/CityListAdapter$ViewHolder;-><init>(Lcom/alipay/mobile/beehive/cityselect/ui/CityListAdapter;)V

    .line 69
    sget v0, Lcom/alipay/mobile/beehive/R$id;->section_header_layout:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    .line 68
    iput-object v0, v1, Lcom/alipay/mobile/beehive/cityselect/ui/CityListAdapter$ViewHolder;->mHeaderLayout:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    .line 71
    sget v0, Lcom/alipay/mobile/beehive/R$id;->section_header_title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 70
    iput-object v0, v1, Lcom/alipay/mobile/beehive/cityselect/ui/CityListAdapter$ViewHolder;->mHeaderText:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 73
    sget v0, Lcom/alipay/mobile/beehive/R$id;->city_item:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 72
    iput-object v0, v1, Lcom/alipay/mobile/beehive/cityselect/ui/CityListAdapter$ViewHolder;->mCityText:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 74
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 79
    :goto_0
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/beehive/cityselect/ui/CityListAdapter;->getPositionForSection(I)I

    move-result v0

    if-ne v0, p1, :cond_1

    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/CityListAdapter;->mIsSearchResult:Z

    if-nez v0, :cond_1

    .line 80
    iget-object v0, v1, Lcom/alipay/mobile/beehive/cityselect/ui/CityListAdapter$ViewHolder;->mHeaderLayout:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    .line 81
    iget-object v3, v1, Lcom/alipay/mobile/beehive/cityselect/ui/CityListAdapter$ViewHolder;->mHeaderText:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/CityListAdapter;->mSections:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    :goto_1
    iget-object v1, v1, Lcom/alipay/mobile/beehive/cityselect/ui/CityListAdapter$ViewHolder;->mCityText:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/CityListAdapter;->mCityList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/cityselect/model/CityVO;

    iget-object v0, v0, Lcom/alipay/mobile/beehive/cityselect/model/CityVO;->city:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    return-object p2

    .line 76
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/cityselect/ui/CityListAdapter$ViewHolder;

    move-object v1, v0

    goto :goto_0

    .line 83
    :cond_1
    iget-object v0, v1, Lcom/alipay/mobile/beehive/cityselect/ui/CityListAdapter$ViewHolder;->mHeaderLayout:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    .prologue
    .line 97
    instance-of v0, p1, Lcom/alipay/mobile/beehive/cityselect/view/CityPinnedHeaderListView;

    if-eqz v0, :cond_0

    .line 98
    check-cast p1, Lcom/alipay/mobile/beehive/cityselect/view/CityPinnedHeaderListView;

    invoke-virtual {p1, p2}, Lcom/alipay/mobile/beehive/cityselect/view/CityPinnedHeaderListView;->configureHeaderView(I)V

    .line 100
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .prologue
    .line 92
    return-void
.end method

.method public refreshUi(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/beehive/cityselect/model/CityVO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 156
    iput-object p1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/CityListAdapter;->mCityList:Ljava/util/List;

    .line 157
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/cityselect/ui/CityListAdapter;->notifyDataSetChanged()V

    .line 158
    return-void
.end method

.method public setIsSearchResult(Z)V
    .locals 0

    .prologue
    .line 161
    iput-boolean p1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/CityListAdapter;->mIsSearchResult:Z

    .line 162
    return-void
.end method
