.class public abstract Lcom/alipay/mobile/socialsdk/api/widget/InfiniteScrollListAdapter;
.super Landroid/support/v4/widget/CursorAdapter;
.source "InfiniteScrollListAdapter.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field protected a:Z

.field protected b:Z

.field protected c:Lcom/alipay/mobile/socialsdk/api/widget/InfiniteScrollListPageListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/alipay/mobile/socialsdk/api/widget/InfiniteScrollListAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/socialsdk/api/widget/InfiniteScrollListAdapter;->TAG:Ljava/lang/String;

    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/InfiniteScrollListAdapter;->a:Z

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/InfiniteScrollListAdapter;->b:Z

    .line 23
    return-void
.end method


# virtual methods
.method public isEnabled(I)Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/InfiniteScrollListAdapter;->b:Z

    return v0
.end method

.method public lock()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/InfiniteScrollListAdapter;->a:Z

    .line 33
    return-void
.end method

.method public notifyEndOfList()V
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/widget/InfiniteScrollListAdapter;->lock()V

    .line 61
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/InfiniteScrollListAdapter;->c:Lcom/alipay/mobile/socialsdk/api/widget/InfiniteScrollListPageListener;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/InfiniteScrollListAdapter;->c:Lcom/alipay/mobile/socialsdk/api/widget/InfiniteScrollListPageListener;

    invoke-interface {v0}, Lcom/alipay/mobile/socialsdk/api/widget/InfiniteScrollListPageListener;->endOfList()V

    .line 64
    :cond_0
    return-void
.end method

.method public notifyHasMore()V
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/widget/InfiniteScrollListAdapter;->unlock()V

    .line 70
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/InfiniteScrollListAdapter;->c:Lcom/alipay/mobile/socialsdk/api/widget/InfiniteScrollListPageListener;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/InfiniteScrollListAdapter;->c:Lcom/alipay/mobile/socialsdk/api/widget/InfiniteScrollListPageListener;

    invoke-interface {v0}, Lcom/alipay/mobile/socialsdk/api/widget/InfiniteScrollListPageListener;->hasMore()V

    .line 73
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2

    .prologue
    .line 45
    instance-of v0, p1, Lcom/alipay/mobile/socialsdk/api/widget/InfiniteScrollListView;

    if-eqz v0, :cond_0

    .line 48
    add-int v0, p2, p3

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/widget/InfiniteScrollListAdapter;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/InfiniteScrollListAdapter;->a:Z

    .line 49
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .prologue
    .line 55
    return-void
.end method

.method public setInfiniteListPageListener(Lcom/alipay/mobile/socialsdk/api/widget/InfiniteScrollListPageListener;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/api/widget/InfiniteScrollListAdapter;->c:Lcom/alipay/mobile/socialsdk/api/widget/InfiniteScrollListPageListener;

    .line 29
    return-void
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/InfiniteScrollListAdapter;->a:Z

    .line 36
    return-void
.end method
