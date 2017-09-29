.class final Lcom/alipay/mobile/socialsdk/api/view/i;
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
    .line 6358
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/api/view/i;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/socialsdk/api/view/q;-><init>(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;B)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;B)V
    .locals 0

    .prologue
    .line 6358
    invoke-direct {p0, p1}, Lcom/alipay/mobile/socialsdk/api/view/i;-><init>(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 6360
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/i;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/i;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->x(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;)I

    move-result v0

    if-gez v0, :cond_1

    .line 6385
    :cond_0
    :goto_0
    return-void

    .line 6364
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/i;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->x(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;)I

    move-result v0

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/api/view/i;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-static {v2}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->q(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;)I

    move-result v2

    sub-int/2addr v0, v2

    .line 6365
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/api/view/i;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 6367
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/i;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->m(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6370
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/view/i;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6371
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/i;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/api/view/i;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-static {v3}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->x(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;)I

    move-result v3

    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/api/view/i;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-static {v4}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->y(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;)J

    move-result-wide v4

    invoke-static {v0, v2, v3, v4, v5}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->a(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;Landroid/view/View;IJ)Z

    move-result v0

    .line 6374
    :goto_1
    if-eqz v0, :cond_0

    .line 6375
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/i;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->setPressed(Z)V

    .line 6376
    invoke-virtual {v2, v1}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    .line 6379
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/i;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->setPressed(Z)V

    .line 6381
    if-eqz v2, :cond_0

    .line 6382
    invoke-virtual {v2, v1}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method
