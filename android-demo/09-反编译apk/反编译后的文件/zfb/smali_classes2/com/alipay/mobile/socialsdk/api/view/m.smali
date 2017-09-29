.class final Lcom/alipay/mobile/socialsdk/api/view/m;
.super Lcom/alipay/mobile/socialsdk/api/view/q;
.source "HorizontalListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:I

.field final synthetic b:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;)V
    .locals 1

    .prologue
    .line 6258
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/api/view/m;->b:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/socialsdk/api/view/q;-><init>(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;B)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;B)V
    .locals 0

    .prologue
    .line 6258
    invoke-direct {p0, p1}, Lcom/alipay/mobile/socialsdk/api/view/m;-><init>(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 6263
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/m;->b:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->m(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6279
    :cond_0
    :goto_0
    return-void

    .line 6267
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/m;->b:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->a(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;)Landroid/widget/ListAdapter;

    move-result-object v0

    .line 6268
    iget v1, p0, Lcom/alipay/mobile/socialsdk/api/view/m;->a:I

    .line 6270
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/api/view/m;->b:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-static {v2}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->c(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;)I

    move-result v2

    if-lez v2, :cond_0

    .line 6271
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 6272
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/m;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6274
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/api/view/m;->b:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/api/view/m;->b:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-static {v3}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->q(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;)I

    move-result v3

    sub-int v3, v1, v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 6275
    if-eqz v2, :cond_0

    .line 6276
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/api/view/m;->b:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual {v3, v2, v1, v4, v5}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->performItemClick(Landroid/view/View;IJ)Z

    goto :goto_0
.end method
