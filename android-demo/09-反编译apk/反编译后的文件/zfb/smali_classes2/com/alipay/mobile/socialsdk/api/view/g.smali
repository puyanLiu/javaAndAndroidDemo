.class final Lcom/alipay/mobile/socialsdk/api/view/g;
.super Landroid/database/DataSetObserver;
.source "HorizontalListView.java"


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

.field private b:Landroid/os/Parcelable;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;)V
    .locals 1

    .prologue
    .line 6088
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/api/view/g;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 6089
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/g;->b:Landroid/os/Parcelable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;B)V
    .locals 0

    .prologue
    .line 6088
    invoke-direct {p0, p1}, Lcom/alipay/mobile/socialsdk/api/view/g;-><init>(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;)V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 2

    .prologue
    .line 6093
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/g;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->b(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;)V

    .line 6094
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/g;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/api/view/g;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->c(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->a(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;I)V

    .line 6095
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/g;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/api/view/g;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-virtual {v1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->b(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;I)V

    .line 6099
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/g;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/g;->b:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    .line 6100
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/g;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->e(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/g;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->c(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;)I

    move-result v0

    if-lez v0, :cond_0

    .line 6101
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/g;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/api/view/g;->b:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 6102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/g;->b:Landroid/os/Parcelable;

    .line 6107
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/g;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->g(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;)V

    .line 6108
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/g;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->requestLayout()V

    .line 6109
    return-void

    .line 6104
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/g;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->f(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;)V

    goto :goto_0
.end method

.method public final onInvalidated()V
    .locals 2

    .prologue
    .line 6113
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/g;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->b(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;)V

    .line 6115
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/g;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->d(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6118
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/g;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/g;->b:Landroid/os/Parcelable;

    .line 6122
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/g;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/api/view/g;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->c(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->a(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;I)V

    .line 6123
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/g;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->b(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;I)V

    .line 6125
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/g;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->h(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;)V

    .line 6126
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/g;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->i(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;)V

    .line 6128
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/g;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->j(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;)V

    .line 6129
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/g;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->k(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;)V

    .line 6131
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/g;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->l(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;)V

    .line 6133
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/g;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->g(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;)V

    .line 6134
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/g;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->requestLayout()V

    .line 6135
    return-void
.end method
