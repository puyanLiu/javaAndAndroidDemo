.class public Lcom/alipay/android/phone/home/user/ui/RightTextFirstLayout;
.super Landroid/widget/RelativeLayout;
.source "RightTextFirstLayout.java"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    iput v3, p0, Lcom/alipay/android/phone/home/user/ui/RightTextFirstLayout;->c:I

    .line 41
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/openplatform/R$layout;->m:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 42
    if-eqz p2, :cond_0

    .line 43
    sget-object v0, Lcom/alipay/android/phone/openplatform/R$styleable;->e:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 44
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/android/phone/home/user/ui/RightTextFirstLayout;->c:I

    .line 45
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 47
    :cond_0
    return-void
.end method

.method private static a(ILjava/lang/String;Landroid/widget/TextView;)V
    .locals 2

    .prologue
    .line 151
    if-nez p2, :cond_1

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 155
    if-nez p0, :cond_0

    .line 158
    if-eqz p1, :cond_0

    .line 159
    invoke-virtual {p2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 160
    const/4 v1, -0x2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 161
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 51
    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->B:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/user/ui/RightTextFirstLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/android/phone/home/user/ui/RightTextFirstLayout;->a:Landroid/widget/TextView;

    .line 52
    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->X:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/user/ui/RightTextFirstLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/android/phone/home/user/ui/RightTextFirstLayout;->b:Landroid/widget/TextView;

    .line 53
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 14

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/ui/RightTextFirstLayout;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 60
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/ui/RightTextFirstLayout;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 62
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/user/ui/RightTextFirstLayout;->getMeasuredWidth()I

    move-result v8

    .line 63
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/user/ui/RightTextFirstLayout;->getMeasuredHeight()I

    move-result v1

    .line 65
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/ui/RightTextFirstLayout;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    .line 66
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/ui/RightTextFirstLayout;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    .line 67
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/ui/RightTextFirstLayout;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    .line 68
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/ui/RightTextFirstLayout;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v9

    .line 70
    const-string/jumbo v0, "RightTextFirstLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "parentwidth=>"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " ;parentHeight=>"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 71
    const-string/jumbo v5, " ;lwidth=>"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " ;rwidth=>"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 72
    const-string/jumbo v5, " ;lheight=>"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, "; rheight=>"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 70
    invoke-static {v0, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const/4 v0, 0x0

    .line 77
    iget v2, p0, Lcom/alipay/android/phone/home/user/ui/RightTextFirstLayout;->c:I

    packed-switch v2, :pswitch_data_0

    move v2, v0

    move v3, v0

    move v4, v0

    move v5, v0

    .line 98
    :goto_0
    const-string/jumbo v0, "RightTextFirstLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "poxl_t=>"

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v7, "; poxl_b=>"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v7, "; poxr_t=>"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v7, "; poxr_b=>"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/ui/RightTextFirstLayout;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 101
    iget-object v1, p0, Lcom/alipay/android/phone/home/user/ui/RightTextFirstLayout;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 103
    iget v7, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v10, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    add-int/2addr v7, v10

    iget v10, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v7, v10

    iget v10, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    add-int/2addr v7, v10

    .line 105
    iget v10, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 107
    add-int v11, v6, v9

    add-int/2addr v11, v7

    if-le v11, v8, :cond_0

    .line 111
    iget v6, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v6, v8

    sub-int/2addr v6, v7

    sub-int/2addr v6, v9

    .line 112
    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 113
    iget v6, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    add-int/2addr v6, v7

    iget v11, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v6, v11

    .line 114
    add-int/2addr v9, v6

    .line 115
    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    sub-int v0, v8, v0

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 120
    sub-int v8, v7, v10

    iput v8, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    move v1, v6

    move v6, v7

    .line 128
    :goto_1
    iget-object v7, p0, Lcom/alipay/android/phone/home/user/ui/RightTextFirstLayout;->a:Landroid/widget/TextView;

    invoke-virtual {v7, v10, v4, v6, v5}, Landroid/widget/TextView;->layout(IIII)V

    .line 129
    iget-object v4, p0, Lcom/alipay/android/phone/home/user/ui/RightTextFirstLayout;->b:Landroid/widget/TextView;

    invoke-virtual {v4, v1, v2, v0, v3}, Landroid/widget/TextView;->layout(IIII)V

    .line 131
    const-string/jumbo v2, "RightTextFirstLayout"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "poxl_l=>"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "; poxl_r=>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "; poxr_l=>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "; poxr_r=>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :goto_2
    return-void

    .line 80
    :pswitch_0
    const/4 v0, 0x0

    .line 81
    add-int/lit8 v2, v3, 0x0

    .line 82
    add-int/lit8 v1, v4, 0x0

    move v3, v1

    move v4, v0

    move v5, v2

    move v2, v0

    .line 83
    goto/16 :goto_0

    .line 86
    :pswitch_1
    sub-int v0, v1, v3

    int-to-double v10, v0

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    double-to-int v2, v10

    .line 87
    add-int/2addr v3, v2

    .line 88
    sub-int v0, v1, v4

    int-to-double v0, v0

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v10

    double-to-int v0, v0

    .line 89
    add-int v1, v0, v4

    move v4, v2

    move v5, v3

    move v2, v0

    move v3, v1

    .line 90
    goto/16 :goto_0

    .line 93
    :pswitch_2
    sub-int v2, v1, v3

    .line 94
    sub-int v0, v1, v4

    move v3, v1

    move v4, v2

    move v5, v1

    move v2, v0

    goto/16 :goto_0

    .line 123
    :cond_0
    add-int/2addr v6, v10

    .line 124
    iget v1, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v6

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v0

    .line 125
    add-int v0, v1, v9

    goto :goto_1

    .line 133
    :cond_1
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    goto :goto_2

    .line 77
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setNewText(ILjava/lang/String;Z)V
    .locals 1

    .prologue
    .line 144
    if-eqz p3, :cond_0

    .line 145
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/ui/RightTextFirstLayout;->a:Landroid/widget/TextView;

    invoke-static {p1, p2, v0}, Lcom/alipay/android/phone/home/user/ui/RightTextFirstLayout;->a(ILjava/lang/String;Landroid/widget/TextView;)V

    .line 148
    :goto_0
    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/ui/RightTextFirstLayout;->b:Landroid/widget/TextView;

    invoke-static {p1, p2, v0}, Lcom/alipay/android/phone/home/user/ui/RightTextFirstLayout;->a(ILjava/lang/String;Landroid/widget/TextView;)V

    goto :goto_0
.end method
