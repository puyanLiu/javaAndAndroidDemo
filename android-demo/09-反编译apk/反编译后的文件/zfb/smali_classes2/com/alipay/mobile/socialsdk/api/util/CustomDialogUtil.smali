.class public Lcom/alipay/mobile/socialsdk/api/util/CustomDialogUtil;
.super Ljava/lang/Object;
.source "CustomDialogUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showCustomDialogUtil(Landroid/content/Context;Lcom/alipay/mobile/socialsdk/api/util/CustomDialogUtil$onConfirmCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZZ)V
    .locals 9

    .prologue
    .line 32
    new-instance v4, Landroid/app/Dialog;

    invoke-direct {v4, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 33
    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 34
    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 36
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/socialsdk/R$layout;->layout_custom_dialog:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 37
    sget v1, Lcom/alipay/mobile/socialsdk/R$id;->rl_whole:I

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 38
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 39
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 40
    const/high16 v3, 0x438c0000    # 280.0f

    invoke-static {p0, v3}, Lcom/alipay/mobile/common/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 41
    const/high16 v3, 0x435c0000    # 220.0f

    invoke-static {p0, v3}, Lcom/alipay/mobile/common/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 43
    :cond_0
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 45
    sget v1, Lcom/alipay/mobile/socialsdk/R$id;->cancel:I

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 46
    sget v2, Lcom/alipay/mobile/socialsdk/R$id;->title:I

    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 47
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    sget v2, Lcom/alipay/mobile/socialsdk/R$id;->et_input:I

    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 49
    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 50
    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 51
    const-string/jumbo v2, "input_method"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 53
    const/4 v5, 0x0

    const/4 v7, 0x2

    invoke-virtual {v2, v5, v7}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 54
    sget v2, Lcom/alipay/mobile/socialsdk/R$id;->input_tip:I

    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 55
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 56
    invoke-virtual {v2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 61
    :goto_0
    sget v2, Lcom/alipay/mobile/socialsdk/R$id;->tv_left_count:I

    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 62
    if-eqz p5, :cond_1

    .line 63
    const/4 v5, 0x1

    new-array v5, v5, [Landroid/text/InputFilter;

    const/4 v7, 0x0

    new-instance v8, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v8, p5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v8, v5, v7

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 64
    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    :cond_1
    if-eqz p6, :cond_4

    .line 68
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 72
    :goto_1
    if-eqz p3, :cond_2

    .line 73
    invoke-virtual {v3, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 74
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, p5, :cond_5

    move v5, p5

    :goto_2
    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setSelection(I)V

    .line 77
    :cond_2
    move/from16 v0, p7

    invoke-virtual {v4, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 79
    new-instance v5, Lcom/alipay/mobile/socialsdk/api/util/a;

    move/from16 v0, p9

    invoke-direct {v5, v0, v3, p5, v2}, Lcom/alipay/mobile/socialsdk/api/util/a;-><init>(ZLandroid/widget/EditText;ILandroid/widget/TextView;)V

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 108
    new-instance v2, Lcom/alipay/mobile/socialsdk/api/util/b;

    invoke-direct {v2, p0, v3, v4}, Lcom/alipay/mobile/socialsdk/api/util/b;-><init>(Landroid/content/Context;Landroid/widget/EditText;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    sget v1, Lcom/alipay/mobile/socialsdk/R$id;->confirm:I

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/Button;

    .line 117
    new-instance v1, Lcom/alipay/mobile/socialsdk/api/util/c;

    move-object v2, p1

    move/from16 v5, p8

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/socialsdk/api/util/c;-><init>(Lcom/alipay/mobile/socialsdk/api/util/CustomDialogUtil$onConfirmCallback;Landroid/widget/EditText;Landroid/app/Dialog;ZLandroid/content/Context;)V

    invoke-virtual {v7, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    return-void

    .line 59
    :cond_3
    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 70
    :cond_4
    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 74
    :cond_5
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    goto :goto_2
.end method
