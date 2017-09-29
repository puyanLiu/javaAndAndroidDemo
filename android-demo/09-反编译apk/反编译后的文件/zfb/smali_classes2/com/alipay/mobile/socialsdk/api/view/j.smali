.class final Lcom/alipay/mobile/socialsdk/api/view/j;
.super Lcom/alipay/mobile/socialsdk/api/view/q;
.source "HorizontalListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;)V
    .locals 1

    .prologue
    .line 6333
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/api/view/j;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/socialsdk/api/view/q;-><init>(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;B)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;B)V
    .locals 0

    .prologue
    .line 6333
    invoke-direct {p0, p1}, Lcom/alipay/mobile/socialsdk/api/view/j;-><init>(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 6336
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/j;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->s(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;)I

    move-result v0

    .line 6337
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/api/view/j;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/api/view/j;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-static {v3}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->q(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;)I

    move-result v3

    sub-int v3, v0, v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 6339
    if-eqz v2, :cond_0

    .line 6340
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/api/view/j;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-static {v3}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->a(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;)Landroid/widget/ListAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/api/view/j;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-static {v4}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->s(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    .line 6343
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/j;->b()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/alipay/mobile/socialsdk/api/view/j;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-static {v5}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->m(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 6344
    iget-object v5, p0, Lcom/alipay/mobile/socialsdk/api/view/j;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-static {v5, v2, v0, v3, v4}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->a(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;Landroid/view/View;IJ)Z

    move-result v0

    .line 6347
    :goto_0
    if-eqz v0, :cond_1

    .line 6348
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/j;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    const/4 v3, -0x1

    invoke-static {v0, v3}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->c(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;I)V

    .line 6349
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/j;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->setPressed(Z)V

    .line 6350
    invoke-virtual {v2, v1}, Landroid/view/View;->setPressed(Z)V

    .line 6355
    :cond_0
    :goto_1
    return-void

    .line 6352
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/j;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->c(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;I)V

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method
