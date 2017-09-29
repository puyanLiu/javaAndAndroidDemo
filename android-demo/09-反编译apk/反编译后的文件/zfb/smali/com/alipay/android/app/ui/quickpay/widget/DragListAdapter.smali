.class public Lcom/alipay/android/app/ui/quickpay/widget/DragListAdapter;
.super Landroid/widget/BaseAdapter;


# instance fields
.field protected a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement",
            "<+",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragListAdapter;->b:Z

    .line 28
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragListAdapter;->c:Landroid/app/Activity;

    .line 29
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragListAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 60
    return-void
.end method

.method public final a(Ljava/lang/Object;I)V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragListAdapter;->a:Ljava/util/ArrayList;

    check-cast p1, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 65
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement",
            "<+",
            "Landroid/view/View;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 36
    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragListAdapter;->a:Ljava/util/ArrayList;

    .line 37
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragListAdapter;->b:Z

    .line 42
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragListAdapter;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 47
    const/4 v0, 0x0

    .line 49
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragListAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragListAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 69
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragListAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;

    .line 79
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragListAdapter;->c:Landroid/app/Activity;

    const-string/jumbo v2, "mini_list_item_handle_right"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->f(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 81
    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->a()Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseComponent;

    const-string/jumbo v2, "channels"

    invoke-static {v0, v2}, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->a(Lcom/alipay/android/app/ui/quickpay/uielement/BaseComponent;Ljava/lang/String;)Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;

    move-result-object v2

    .line 82
    const-string/jumbo v0, "drag_text"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 83
    if-eqz v0, :cond_0

    if-nez v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 110
    :goto_0
    return-object v0

    .line 86
    :cond_1
    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    const/4 v3, 0x1

    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->k()F

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 90
    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a(Ljava/lang/String;)I

    move-result v2

    .line 91
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 95
    const-string/jumbo v0, "drag_handle"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 96
    iget-boolean v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragListAdapter;->b:Z

    if-eqz v2, :cond_2

    .line 97
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 98
    const-string/jumbo v0, "mini_block_item_normal_bg"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_1
    move-object v0, v1

    .line 110
    goto :goto_0

    .line 100
    :cond_2
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 101
    const-string/jumbo v0, "mini_block_item_normal_bg"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1
.end method
