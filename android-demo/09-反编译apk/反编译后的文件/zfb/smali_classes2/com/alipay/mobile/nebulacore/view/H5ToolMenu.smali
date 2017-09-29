.class public Lcom/alipay/mobile/nebulacore/view/H5ToolMenu;
.super Lcom/alipay/mobile/nebulacore/view/H5PopMenu;
.source "H5ToolMenu.java"


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/h5container/api/H5Page;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;-><init>(Lcom/alipay/mobile/h5container/api/H5Page;)V

    .line 29
    return-void
.end method


# virtual methods
.method public exit()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5ToolMenu;->a:Ljava/util/List;

    .line 33
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5ToolMenu;->c:Landroid/widget/PopupWindow;

    .line 34
    return-void
.end method

.method public initMenu()V
    .locals 6

    .prologue
    .line 107
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 108
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5ToolMenu;->a:Ljava/util/List;

    .line 110
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5ToolMenu;->a:Ljava/util/List;

    new-instance v2, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$MenuItem;

    sget v3, Lcom/alipay/mobile/nebulacore/R$string;->menu_font:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 111
    const-string/jumbo v4, "h5MenuActionOfFont"

    .line 112
    sget v5, Lcom/alipay/mobile/nebulacore/R$drawable;->h5_nav_font:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v0, v5}, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$MenuItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    .line 110
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    return-void
.end method

.method public showMenu(Landroid/view/View;)V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v3, 0x0

    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 42
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 43
    invoke-virtual {v6, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 44
    invoke-virtual {v6, v13}, Landroid/widget/LinearLayout;->setVerticalScrollBarEnabled(Z)V

    .line 46
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 47
    sget v1, Lcom/alipay/mobile/nebulacore/R$drawable;->more_options_bg:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 48
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 49
    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 53
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 54
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    move v2, v3

    move v4, v3

    move v5, v3

    .line 55
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5ToolMenu;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_0

    .line 64
    iget v0, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v4

    iget v1, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    .line 66
    iget v1, v8, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v5

    iget v2, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    .line 67
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 70
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 72
    aget v4, v2, v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int v5, v1, v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    .line 73
    aget v2, v2, v13

    sub-int v0, v2, v0

    .line 75
    new-instance v2, Landroid/widget/PopupWindow;

    const/4 v5, -0x2

    invoke-direct {v2, v6, v1, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5ToolMenu;->c:Landroid/widget/PopupWindow;

    .line 76
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5ToolMenu;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v13}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 77
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5ToolMenu;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v13}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 78
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5ToolMenu;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v13}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 80
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5ToolMenu;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v7}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 81
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5ToolMenu;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v1, p1, v3, v4, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 82
    return-void

    .line 56
    :cond_0
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sget v1, Lcom/alipay/mobile/nebulacore/R$layout;->h5_popup_menu_item:I

    invoke-virtual {v0, v1, v6, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5ToolMenu;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {v11, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5ToolMenu;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$MenuItem;

    sget v1, Lcom/alipay/mobile/nebulacore/R$id;->tv_title:I

    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v12, v0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$MenuItem;->name:Ljava/lang/String;

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    sget v1, Lcom/alipay/mobile/nebulacore/R$id;->iv_icon:I

    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v12, v0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$MenuItem;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$MenuItem;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 57
    :cond_1
    invoke-virtual {v11, v9, v10}, Landroid/view/View;->measure(II)V

    .line 58
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 59
    if-le v5, v0, :cond_2

    .line 60
    :goto_1
    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 61
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int v1, v4, v0

    .line 55
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v4, v1

    goto/16 :goto_0

    :cond_2
    move v5, v0

    .line 59
    goto :goto_1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5ToolMenu;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
