.class public Lcom/alipay/mobile/nebulacore/view/H5NavMenu;
.super Lcom/alipay/mobile/nebulacore/view/H5PopMenu;
.source "H5NavMenu.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5NavMenu"


# instance fields
.field private h:I

.field private i:I


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/h5container/api/H5Page;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;-><init>(Lcom/alipay/mobile/h5container/api/H5Page;)V

    .line 35
    return-void
.end method


# virtual methods
.method public initMenu()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 40
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 41
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->a:Ljava/util/List;

    .line 43
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->a:Ljava/util/List;

    new-instance v2, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$MenuItem;

    sget v3, Lcom/alipay/mobile/nebulacore/R$string;->menu_copy:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 44
    const-string/jumbo v4, "copy"

    .line 45
    sget v5, Lcom/alipay/mobile/nebulacore/R$drawable;->h5_nav_copy:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$MenuItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    .line 43
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->a:Ljava/util/List;

    new-instance v2, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$MenuItem;

    sget v3, Lcom/alipay/mobile/nebulacore/R$string;->menu_refresh:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 47
    const-string/jumbo v4, "refresh"

    .line 48
    sget v5, Lcom/alipay/mobile/nebulacore/R$drawable;->h5_nav_refresh:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$MenuItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    .line 46
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->a:Ljava/util/List;

    new-instance v2, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$MenuItem;

    sget v3, Lcom/alipay/mobile/nebulacore/R$string;->menu_open_in_browser:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 50
    const-string/jumbo v4, "openInBrowser"

    .line 51
    sget v5, Lcom/alipay/mobile/nebulacore/R$drawable;->h5_nav_browse:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$MenuItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    .line 49
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->a:Ljava/util/List;

    new-instance v2, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$MenuItem;

    sget v3, Lcom/alipay/mobile/nebulacore/R$string;->menu_font:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 53
    const-string/jumbo v4, "h5MenuActionOfFont"

    .line 54
    sget v5, Lcom/alipay/mobile/nebulacore/R$drawable;->h5_nav_font:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {v2, v3, v4, v0, v6}, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$MenuItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    .line 52
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    return-void
.end method

.method public showMenu(Landroid/view/View;)V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v3, 0x0

    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->c:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    const-string/jumbo v0, "H5NavMenu"

    const-string/jumbo v1, "menu is showing!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->f:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->c:Landroid/widget/PopupWindow;

    if-nez v0, :cond_3

    .line 65
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 66
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 67
    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 68
    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->setVerticalScrollBarEnabled(Z)V

    .line 69
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 73
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    move v2, v3

    move v4, v3

    .line 74
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_4

    .line 87
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 89
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 91
    sget v2, Lcom/alipay/mobile/nebulacore/R$drawable;->h5_nav_menu_bg:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 92
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 93
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 95
    sub-int v0, v1, v4

    const/16 v1, 0x8

    invoke-static {v5, v1}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->dip2px(Landroid/content/Context;I)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->h:I

    .line 98
    iget v0, v2, Landroid/graphics/Rect;->top:I

    neg-int v0, v0

    iput v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->i:I

    .line 100
    sget v0, Lcom/alipay/mobile/nebulacore/R$drawable;->h5_nav_menu_bg:I

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 101
    iget v0, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v6, v3, v0, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 102
    new-instance v0, Landroid/widget/PopupWindow;

    const/4 v1, -0x2

    invoke-direct {v0, v6, v4, v1, v11}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->c:Landroid/widget/PopupWindow;

    .line 104
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->c:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 105
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v11}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 106
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v11}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 107
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v11}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 109
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 112
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 115
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_8

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->c:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->h:I

    iget v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->i:I

    invoke-virtual {v0, p1, v1, v2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    const-string/jumbo v1, "H5NavMenu"

    const-string/jumbo v2, "exception detail."

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 75
    :cond_4
    if-eqz v2, :cond_5

    .line 76
    new-instance v0, Landroid/view/View;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 77
    sget v1, Lcom/alipay/mobile/nebulacore/R$color;->h5_nav_menu_divider:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 78
    const/4 v1, -0x1

    invoke-virtual {v6, v0, v1, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 80
    :cond_5
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/nebulacore/R$layout;->h5_nav_menu_item:I

    invoke-virtual {v0, v1, v6, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {v9, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$MenuItem;

    sget v1, Lcom/alipay/mobile/nebulacore/R$id;->tv_title:I

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v10, v0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$MenuItem;->name:Ljava/lang/String;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$MenuItem;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_6

    sget v1, Lcom/alipay/mobile/nebulacore/R$id;->iv_icon:I

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$MenuItem;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 81
    :cond_6
    invoke-virtual {v9, v7, v8}, Landroid/view/View;->measure(II)V

    .line 82
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 83
    if-le v4, v1, :cond_7

    move v1, v4

    .line 84
    :cond_7
    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 74
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v4, v1

    goto/16 :goto_1

    .line 122
    :cond_8
    const-string/jumbo v0, "H5NavMenu"

    const-string/jumbo v1, "Activity is finishing, PopupWindow.showAsDropDown() is ignored!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
