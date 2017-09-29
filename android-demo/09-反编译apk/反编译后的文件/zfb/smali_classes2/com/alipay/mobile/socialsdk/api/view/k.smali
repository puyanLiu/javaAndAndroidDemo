.class final Lcom/alipay/mobile/socialsdk/api/view/k;
.super Ljava/lang/Object;
.source "HorizontalListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;)V
    .locals 0

    .prologue
    .line 6282
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/api/view/k;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;B)V
    .locals 0

    .prologue
    .line 6282
    invoke-direct {p0, p1}, Lcom/alipay/mobile/socialsdk/api/view/k;-><init>(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 6285
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/k;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->r(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 6330
    :cond_0
    :goto_0
    return-void

    .line 6289
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/k;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-static {v0, v3}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->c(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;I)V

    .line 6291
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/k;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/api/view/k;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->s(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;)I

    move-result v1

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/api/view/k;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-static {v2}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->q(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6292
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6293
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/api/view/k;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->t(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;)V

    .line 6295
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/api/view/k;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->m(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 6296
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/api/view/k;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->setPressed(Z)V

    .line 6297
    invoke-virtual {v0, v3}, Landroid/view/View;->setPressed(Z)V

    .line 6299
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/api/view/k;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->u(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;)V

    .line 6300
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/api/view/k;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/api/view/k;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-static {v2}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->s(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;)I

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->a(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;ILandroid/view/View;)V

    .line 6301
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/api/view/k;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-virtual {v1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->refreshDrawableState()V

    .line 6303
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/api/view/k;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/api/view/k;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-static {v2}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->s(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;)I

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->a(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;ILandroid/view/View;)V

    .line 6304
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/k;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->refreshDrawableState()V

    .line 6306
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/k;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->isLongClickable()Z

    move-result v1

    .line 6308
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/k;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->v(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6309
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/k;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->v(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 6311
    if-eqz v0, :cond_2

    instance-of v2, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v2, :cond_2

    .line 6312
    if-eqz v1, :cond_3

    .line 6313
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    .line 6314
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 6321
    :cond_2
    :goto_1
    if-eqz v1, :cond_4

    .line 6322
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/k;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->w(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;)V

    goto/16 :goto_0

    .line 6316
    :cond_3
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_1

    .line 6324
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/k;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-static {v0, v4}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->c(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;I)V

    goto/16 :goto_0

    .line 6327
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/k;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-static {v0, v4}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->c(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;I)V

    goto/16 :goto_0
.end method
