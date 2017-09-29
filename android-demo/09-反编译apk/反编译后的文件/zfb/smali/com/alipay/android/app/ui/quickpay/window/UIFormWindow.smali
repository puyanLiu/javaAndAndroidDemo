.class public Lcom/alipay/android/app/ui/quickpay/window/UIFormWindow;
.super Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;


# instance fields
.field private F:Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;

.field private G:Lcom/alipay/android/app/ui/quickpay/window/GuideWindow;


# direct methods
.method protected constructor <init>(Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;-><init>(Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;)V

    .line 50
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/ui/quickpay/window/UIFormWindow;)Lcom/alipay/android/app/ui/quickpay/window/GuideWindow;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/UIFormWindow;->G:Lcom/alipay/android/app/ui/quickpay/window/GuideWindow;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 12

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/UIFormWindow;->g:Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/UIFormWindow;->g:Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->d()Ljava/lang/String;

    move-result-object v0

    .line 56
    sget-object v1, Lcom/alipay/android/app/pay/GlobalConstant;->APPID:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/window/UIFormWindow;->q()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/alipay/android/app/util/LogAgent;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_0
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/window/UIFormWindow;->i:Landroid/app/Activity;

    .line 59
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/UIFormWindow;->i:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 61
    const-string/jumbo v1, "mini_win_background_draw"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 62
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 64
    const-string/jumbo v1, "mini_activity_main"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->f(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 65
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 67
    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/window/UIFormWindow;->e:Z

    if-eqz v0, :cond_1

    .line 68
    const-string/jumbo v0, "mini_scroll_layout"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 69
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 71
    :cond_1
    invoke-virtual {p0, v4}, Lcom/alipay/android/app/ui/quickpay/window/UIFormWindow;->a(Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 73
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/UIFormWindow;->i:Landroid/app/Activity;

    const-string/jumbo v1, "mini_layout_parent"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 75
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    const-string/jumbo v5, "mini_layout"

    invoke-static {v5}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v5

    if-ne v1, v5, :cond_6

    .line 76
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 77
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/UIFormWindow;->i:Landroid/app/Activity;

    const-string/jumbo v5, "mini_keeppre_layout"

    invoke-static {v5}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 79
    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 89
    :cond_2
    :goto_0
    const-string/jumbo v1, "mini_root"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 91
    invoke-virtual {p0, p2}, Lcom/alipay/android/app/ui/quickpay/window/UIFormWindow;->a(Landroid/view/ViewGroup;)V

    .line 93
    iget-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/window/UIFormWindow;->c:Z

    if-eqz v1, :cond_7

    .line 94
    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 96
    const/4 v0, -0x1

    iput v0, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 97
    const/4 v0, -0x1

    iput v0, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 98
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p2, v0, v1, v5, v6}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 100
    const-string/jumbo v0, "mini_page_bg_color"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 101
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/UIFormWindow;->i:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-string/jumbo v1, "mini_win_background_draw"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 103
    const/4 v0, -0x1

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 104
    const/4 v0, -0x1

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 106
    const/4 v0, -0x2

    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 174
    :cond_3
    :goto_1
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 175
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 176
    invoke-virtual {p2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 181
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/UIFormWindow;->a:Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->a()Ljava/util/List;

    move-result-object v0

    .line 182
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;

    .line 183
    instance-of v1, v0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;

    if-eqz v1, :cond_4

    move-object v1, v0

    .line 184
    check-cast v1, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;

    invoke-virtual {v1}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->n()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "card_no"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 185
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/UIFormWindow;->g:Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;

    invoke-virtual {v1}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->e()Ljava/lang/String;

    move-result-object v1

    .line 187
    const-string/jumbo v3, "10000007"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string/jumbo v3, "20000053"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    :cond_5
    const/4 v1, 0x1

    .line 189
    :goto_3
    check-cast v0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;

    if-nez v1, :cond_13

    const/4 v1, 0x1

    :goto_4
    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->e(Z)V

    goto :goto_2

    .line 80
    :cond_6
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    const-string/jumbo v5, "mini_keeppre_layout"

    invoke-static {v5}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v5

    if-eq v1, v5, :cond_2

    .line 81
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 82
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/UIFormWindow;->i:Landroid/app/Activity;

    const-string/jumbo v5, "mini_keeppre_layout"

    invoke-static {v5}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 84
    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 108
    :cond_7
    instance-of v1, p0, Lcom/alipay/android/app/ui/quickpay/window/UIGuideForm;

    if-nez v1, :cond_8

    .line 109
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/UIFormWindow;->i:Landroid/app/Activity;

    const-string/jumbo v5, "mini_keepbackground_layout"

    invoke-static {v5}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_e

    .line 111
    const-string/jumbo v1, "#80000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 116
    :cond_8
    :goto_5
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/UIFormWindow;->i:Landroid/app/Activity;

    invoke-static {v1}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->e(Landroid/app/Activity;)I

    move-result v1

    .line 117
    iget-object v5, p0, Lcom/alipay/android/app/ui/quickpay/window/UIFormWindow;->i:Landroid/app/Activity;

    invoke-static {v5}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d(Landroid/app/Activity;)I

    move-result v5

    .line 118
    iget-object v8, p0, Lcom/alipay/android/app/ui/quickpay/window/UIFormWindow;->y:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 119
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/UIFormWindow;->y:Ljava/lang/String;

    iget-object v8, p0, Lcom/alipay/android/app/ui/quickpay/window/UIFormWindow;->i:Landroid/app/Activity;

    iget-object v9, p0, Lcom/alipay/android/app/ui/quickpay/window/UIFormWindow;->i:Landroid/app/Activity;

    invoke-static {v9}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->b(Landroid/app/Activity;)I

    move-result v9

    invoke-static {v1, v8, v9}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a(Ljava/lang/String;Landroid/app/Activity;I)I

    move-result v1

    .line 122
    :cond_9
    iget-object v8, p0, Lcom/alipay/android/app/ui/quickpay/window/UIFormWindow;->z:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 123
    iget-object v5, p0, Lcom/alipay/android/app/ui/quickpay/window/UIFormWindow;->z:Ljava/lang/String;

    iget-object v8, p0, Lcom/alipay/android/app/ui/quickpay/window/UIFormWindow;->i:Landroid/app/Activity;

    iget-object v9, p0, Lcom/alipay/android/app/ui/quickpay/window/UIFormWindow;->i:Landroid/app/Activity;

    invoke-static {v9}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a(Landroid/app/Activity;)I

    move-result v9

    invoke-static {v5, v8, v9}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->b(Ljava/lang/String;Landroid/app/Activity;I)I

    move-result v5

    .line 127
    :cond_a
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p2, v8, v9, v10, v11}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 129
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getId()I

    move-result v8

    const-string/jumbo v9, "mini_keeppre_layout"

    invoke-static {v9}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v9

    if-ne v8, v9, :cond_f

    .line 130
    const/4 v8, -0x1

    iput v8, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 131
    const/4 v8, -0x1

    iput v8, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 133
    const-string/jumbo v6, "#80000000"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p2, v6}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 135
    const/4 v6, 0x0

    invoke-virtual {p2, v6}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    :goto_6
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/window/UIFormWindow;->b()Ljava/lang/String;

    move-result-object v6

    .line 144
    instance-of v8, p0, Lcom/alipay/android/app/ui/quickpay/window/UIGuideForm;

    if-nez v8, :cond_c

    .line 145
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_11

    .line 146
    iget-object v8, p0, Lcom/alipay/android/app/ui/quickpay/window/UIFormWindow;->i:Landroid/app/Activity;

    invoke-static {v8, v6}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    .line 147
    const-string/jumbo v9, "red"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 148
    const-string/jumbo v6, "#b3000000"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 151
    :cond_b
    if-eqz v8, :cond_10

    .line 152
    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 161
    :cond_c
    :goto_7
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-string/jumbo v6, "mini_win_background_draw"

    invoke-static {v6}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 163
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 164
    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 165
    instance-of v0, v2, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_d

    move-object v0, v2

    .line 166
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 168
    :cond_d
    const/4 v0, -0x2

    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 169
    instance-of v0, v3, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/window/UIFormWindow;->e:Z

    if-nez v0, :cond_3

    move-object v0, v3

    .line 170
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto/16 :goto_1

    .line 113
    :cond_e
    const-string/jumbo v1, "#00000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    goto/16 :goto_5

    .line 137
    :cond_f
    const/4 v8, -0x2

    iput v8, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 138
    const/4 v8, -0x2

    iput v8, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_6

    .line 154
    :cond_10
    const-string/jumbo v0, "mini_bg"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_7

    .line 157
    :cond_11
    const-string/jumbo v0, "mini_bg"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_7

    .line 187
    :cond_12
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 189
    :cond_13
    const/4 v1, 0x0

    goto/16 :goto_4

    .line 194
    :cond_14
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    const-string/jumbo v1, "mini_layout"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_15

    .line 196
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/UIFormWindow;->i:Landroid/app/Activity;

    const-string/jumbo v1, "mini_layout_parent"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move-object p2, v0

    :cond_15
    move-object v0, v4

    .line 201
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, v0, p2}, Lcom/alipay/android/app/ui/quickpay/window/UIFormWindow;->a(Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    .line 203
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/UIFormWindow;->a:Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_16
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;

    instance-of v0, v1, Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;

    if-eqz v0, :cond_19

    move-object v0, v1

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;->M()Z

    move-result v0

    if-eqz v0, :cond_19

    check-cast v1, Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;

    iput-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/UIFormWindow;->F:Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;

    .line 205
    :cond_17
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/UIFormWindow;->i:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/UIFormWindow;->F:Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;

    if-eqz v1, :cond_18

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/UIFormWindow;->F:Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;->O()Landroid/view/View;

    move-result-object v0

    :cond_18
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/app/ui/quickpay/window/bb;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/ui/quickpay/window/bb;-><init>(Lcom/alipay/android/app/ui/quickpay/window/UIFormWindow;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 207
    return-void

    .line 203
    :cond_19
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/window/UIFormWindow;->x:I

    if-lez v0, :cond_16

    instance-of v0, v1, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;

    if-eqz v0, :cond_16

    const-string/jumbo v3, "redpoint"

    move-object v0, v1

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->n()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    check-cast v1, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->a(I)V

    goto :goto_8
.end method

.method public a(Lcom/alipay/android/app/json/JSONObject;)V
    .locals 1

    .prologue
    .line 211
    invoke-super {p0, p1}, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->a(Lcom/alipay/android/app/json/JSONObject;)V

    .line 212
    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/window/UIFormWindow;->d:Z

    if-eqz v0, :cond_0

    .line 213
    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/window/GuideWindow;->a()Lcom/alipay/android/app/ui/quickpay/window/GuideWindow;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/UIFormWindow;->G:Lcom/alipay/android/app/ui/quickpay/window/GuideWindow;

    .line 215
    :cond_0
    return-void
.end method

.method protected a(Lcom/alipay/android/app/ui/quickpay/event/ActionType;)Z
    .locals 5

    .prologue
    .line 308
    const/4 v1, 0x1

    .line 309
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/UIFormWindow;->g:Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->d()Ljava/lang/String;

    move-result-object v2

    .line 310
    invoke-super {p0}, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->d()Ljava/util/List;

    move-result-object v0

    .line 312
    invoke-virtual {p1}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->j()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 313
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;

    .line 314
    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->b()Z

    move-result v4

    if-nez v4, :cond_0

    .line 315
    instance-of v1, v0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;

    if-eqz v1, :cond_1

    .line 316
    check-cast v0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->t()Ljava/lang/String;

    move-result-object v0

    .line 317
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 318
    sget-object v1, Lcom/alipay/android/app/pay/GlobalConstant;->APPID:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/window/UIFormWindow;->q()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v0, v3, v2}, Lcom/alipay/android/app/util/LogAgent;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    :cond_1
    const/4 v0, 0x0

    .line 327
    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method protected final c(Z)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 268
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/window/UIFormWindow;->d()Ljava/util/List;

    move-result-object v5

    .line 270
    if-eqz v5, :cond_0

    .line 271
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    move v4, v3

    move v2, v3

    .line 272
    :goto_0
    if-ge v4, v6, :cond_1

    .line 273
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;

    if-eqz v0, :cond_6

    .line 274
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;

    .line 275
    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->w()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    .line 272
    :goto_1
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v3

    .line 282
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/window/UIFormWindow;->e()Ljava/util/List;

    move-result-object v5

    .line 283
    if-eqz v5, :cond_2

    .line 284
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    move v4, v3

    .line 285
    :goto_2
    if-ge v4, v6, :cond_2

    .line 286
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;

    if-eqz v0, :cond_5

    .line 287
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;

    .line 288
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->l()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->k()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    .line 285
    :goto_3
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v0

    goto :goto_2

    .line 295
    :cond_2
    if-nez v2, :cond_4

    if-nez p1, :cond_4

    .line 303
    :cond_3
    :goto_4
    return v3

    .line 299
    :cond_4
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/UIFormWindow;->q:Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

    if-eqz v0, :cond_3

    .line 300
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/UIFormWindow;->q:Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->a(Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;)[Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    move-result-object v0

    invoke-virtual {p0, p0, v0}, Lcom/alipay/android/app/ui/quickpay/window/UIFormWindow;->a(Ljava/lang/Object;[Lcom/alipay/android/app/ui/quickpay/event/ActionType;)Z

    move v3, v1

    .line 301
    goto :goto_4

    :cond_5
    move v0, v2

    goto :goto_3

    :cond_6
    move v0, v2

    goto :goto_1
.end method

.method public dispose()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 238
    invoke-super {p0}, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->dispose()V

    .line 239
    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/UIFormWindow;->u:Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

    .line 240
    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/UIFormWindow;->q:Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

    .line 241
    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/UIFormWindow;->p:Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

    .line 242
    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/UIFormWindow;->G:Lcom/alipay/android/app/ui/quickpay/window/GuideWindow;

    .line 243
    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/UIFormWindow;->i:Landroid/app/Activity;

    .line 244
    return-void
.end method

.method protected t()Z
    .locals 3

    .prologue
    .line 252
    const/4 v1, 0x1

    .line 253
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/window/UIFormWindow;->d()Ljava/util/List;

    move-result-object v0

    .line 254
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;

    .line 255
    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    const/4 v0, 0x0

    .line 260
    :goto_0
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/UIFormWindow;->F:Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;

    if-eqz v1, :cond_1

    .line 261
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/UIFormWindow;->F:Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;->d(Z)V

    .line 263
    :cond_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method protected final u()Lcom/alipay/android/app/json/JSONObject;
    .locals 4

    .prologue
    .line 362
    invoke-super {p0}, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->d()Ljava/util/List;

    move-result-object v1

    .line 363
    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    .line 364
    if-eqz v1, :cond_0

    .line 365
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;

    .line 366
    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->c()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/android/app/util/JsonUtils;->b(Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/json/JSONObject;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    move-object v1, v0

    .line 367
    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 370
    :cond_1
    invoke-super {p0}, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->e()Ljava/util/List;

    move-result-object v0

    .line 371
    if-eqz v0, :cond_2

    .line 372
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;

    .line 373
    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;->c()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 374
    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;->c()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/android/app/util/JsonUtils;->a(Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/json/JSONObject;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    :goto_2
    move-object v1, v0

    .line 376
    goto :goto_1

    .line 379
    :cond_2
    return-object v1

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method
