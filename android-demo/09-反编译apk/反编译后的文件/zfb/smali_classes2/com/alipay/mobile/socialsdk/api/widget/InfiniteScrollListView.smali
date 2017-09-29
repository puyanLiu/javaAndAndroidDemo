.class public Lcom/alipay/mobile/socialsdk/api/widget/InfiniteScrollListView;
.super Landroid/widget/ListView;
.source "InfiniteScrollListView.java"

# interfaces
.implements Lcom/alipay/mobile/socialsdk/api/widget/InfiniteScrollListPageListener;


# instance fields
.field private a:Landroid/view/View;

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/InfiniteScrollListView;->b:Z

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/InfiniteScrollListView;->b:Z

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/InfiniteScrollListView;->b:Z

    .line 29
    return-void
.end method

.method private a(Landroid/widget/ListView;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 36
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/InfiniteScrollListView;->b:Z

    if-nez v0, :cond_0

    .line 41
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/InfiniteScrollListView;->b:Z

    goto :goto_0
.end method

.method private b(Landroid/widget/ListView;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 47
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/InfiniteScrollListView;->b:Z

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/InfiniteScrollListView;->b:Z

    goto :goto_0
.end method


# virtual methods
.method public endOfList()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/InfiniteScrollListView;->a:Landroid/view/View;

    invoke-direct {p0, p0, v0}, Lcom/alipay/mobile/socialsdk/api/widget/InfiniteScrollListView;->b(Landroid/widget/ListView;Landroid/view/View;)V

    .line 78
    return-void
.end method

.method public hasMore()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/InfiniteScrollListView;->a:Landroid/view/View;

    invoke-direct {p0, p0, v0}, Lcom/alipay/mobile/socialsdk/api/widget/InfiniteScrollListView;->a(Landroid/widget/ListView;Landroid/view/View;)V

    .line 84
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    .prologue
    .line 60
    instance-of v0, p1, Lcom/alipay/mobile/socialsdk/api/widget/InfiniteScrollListAdapter;

    if-nez v0, :cond_0

    .line 72
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 64
    check-cast v0, Lcom/alipay/mobile/socialsdk/api/widget/InfiniteScrollListAdapter;

    .line 65
    invoke-virtual {v0, p0}, Lcom/alipay/mobile/socialsdk/api/widget/InfiniteScrollListAdapter;->setInfiniteListPageListener(Lcom/alipay/mobile/socialsdk/api/widget/InfiniteScrollListPageListener;)V

    .line 66
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/api/widget/InfiniteScrollListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 68
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/widget/InfiniteScrollListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 69
    invoke-direct {p0, p0, v0}, Lcom/alipay/mobile/socialsdk/api/widget/InfiniteScrollListView;->a(Landroid/widget/ListView;Landroid/view/View;)V

    .line 70
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 71
    invoke-direct {p0, p0, v0}, Lcom/alipay/mobile/socialsdk/api/widget/InfiniteScrollListView;->b(Landroid/widget/ListView;Landroid/view/View;)V

    goto :goto_0
.end method

.method public setLoadingView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/api/widget/InfiniteScrollListView;->a:Landroid/view/View;

    .line 33
    return-void
.end method
