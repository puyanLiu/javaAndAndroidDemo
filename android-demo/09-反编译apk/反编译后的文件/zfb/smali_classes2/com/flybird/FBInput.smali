.class public Lcom/flybird/FBInput;
.super Lcom/flybird/FBView;
.source "FBInput.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;

.field private k:Landroid/widget/EditText;

.field private l:Landroid/widget/CheckBox;

.field private m:Landroid/graphics/drawable/Drawable;

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:Z

.field private s:Z

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Landroid/app/Dialog;

.field private w:Z

.field private x:Landroid/view/View;

.field private y:Ljava/lang/String;

.field private z:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/flybird/FBDocument;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 115
    new-instance v0, Lcom/flybird/FBBorderInput;

    invoke-direct {v0, p1}, Lcom/flybird/FBBorderInput;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0, p3}, Lcom/flybird/FBView;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/flybird/FBDocument;)V

    .line 45
    iput-object v1, p0, Lcom/flybird/FBInput;->m:Landroid/graphics/drawable/Drawable;

    .line 54
    iput-boolean v3, p0, Lcom/flybird/FBInput;->r:Z

    .line 56
    iput-boolean v2, p0, Lcom/flybird/FBInput;->s:Z

    .line 58
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/flybird/FBInput;->t:Ljava/lang/String;

    .line 60
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/flybird/FBInput;->u:Ljava/lang/String;

    .line 61
    iput-object v1, p0, Lcom/flybird/FBInput;->v:Landroid/app/Dialog;

    .line 63
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/flybird/FBInput;->a:Ljava/lang/String;

    .line 65
    iput-boolean v3, p0, Lcom/flybird/FBInput;->w:Z

    .line 67
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/flybird/FBInput;->b:Ljava/lang/String;

    .line 69
    iput-object v1, p0, Lcom/flybird/FBInput;->x:Landroid/view/View;

    .line 71
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/flybird/FBInput;->y:Ljava/lang/String;

    .line 73
    iput-object v1, p0, Lcom/flybird/FBInput;->z:[Ljava/lang/String;

    .line 116
    iget-object v0, p0, Lcom/flybird/FBInput;->mView:Landroid/view/View;

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/flybird/FBInput;->k:Landroid/widget/EditText;

    .line 117
    iget-object v0, p0, Lcom/flybird/FBInput;->k:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 118
    iget-object v0, p0, Lcom/flybird/FBInput;->k:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 119
    iget-object v0, p0, Lcom/flybird/FBInput;->e:Lcom/flybird/FBDocument;

    iput-boolean v2, v0, Lcom/flybird/FBDocument;->b:Z

    .line 121
    :try_start_0
    const-class v0, Landroid/widget/TextView;

    const-string/jumbo v1, "mCursorDrawableRes"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 122
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 123
    iget-object v1, p0, Lcom/flybird/FBInput;->k:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :goto_0
    const/4 v0, -0x1

    .line 127
    const-string/jumbo v1, "template_clean_icon"

    const-string/jumbo v2, "drawable"

    const-string/jumbo v3, "com.alipay.android.app.template"

    invoke-static {p1, v1, v2, v3}, Lcom/alipay/android/app/template/ResUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 128
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 126
    invoke-static {v0, v1, v2}, Lcom/alipay/android/app/template/util/UiUtil;->getPaddingDrawable(IILandroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/flybird/FBInput;->m:Landroid/graphics/drawable/Drawable;

    .line 129
    invoke-direct {p0}, Lcom/flybird/FBInput;->b()V

    .line 130
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Landroid/view/View;Landroid/view/View;)Landroid/view/View;
    .locals 4

    .prologue
    .line 467
    if-nez p1, :cond_0

    .line 468
    iget-object v0, p0, Lcom/flybird/FBInput;->e:Lcom/flybird/FBDocument;

    iget-object v0, v0, Lcom/flybird/FBDocument;->mContext:Landroid/app/Activity;

    const-string/jumbo v1, "flybird_main_layout"

    const-string/jumbo v2, "id"

    const-string/jumbo v3, "com.alipay.android.app"

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/android/app/template/ResUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 469
    iget-object v1, p0, Lcom/flybird/FBInput;->e:Lcom/flybird/FBDocument;

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Lcom/flybird/FBDocument;->setKeyboardParent(Landroid/widget/LinearLayout;)V

    .line 470
    iget-object v0, p0, Lcom/flybird/FBInput;->e:Lcom/flybird/FBDocument;

    invoke-virtual {v0}, Lcom/flybird/FBDocument;->getKeyboardParentView()Landroid/widget/LinearLayout;

    move-result-object p1

    .line 472
    :cond_0
    return-object p1
.end method

.method static synthetic a(Lcom/flybird/FBInput;Landroid/view/View;Landroid/view/View;)Landroid/view/View;
    .locals 1

    .prologue
    .line 466
    invoke-direct {p0, p1, p2}, Lcom/flybird/FBInput;->a(Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/flybird/FBInput;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/flybird/FBInput;->y:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/flybird/FBInput;)Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/flybird/FBInput;->s:Z

    return v0
.end method

.method static synthetic b(Lcom/flybird/FBInput;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/flybird/FBInput;->k:Landroid/widget/EditText;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/flybird/FBInput;->k:Landroid/widget/EditText;

    if-nez v0, :cond_0

    .line 110
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/flybird/FBInput;->k:Landroid/widget/EditText;

    new-instance v1, Lcom/flybird/FBInput$1;

    invoke-direct {v1, p0}, Lcom/flybird/FBInput$1;-><init>(Lcom/flybird/FBInput;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/flybird/FBInput;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/flybird/FBInput;->u:Ljava/lang/String;

    return-void
.end method

.method private c()Lcom/flybird/FBInput$DecorViewInfo;
    .locals 3

    .prologue
    .line 481
    new-instance v2, Lcom/flybird/FBInput$DecorViewInfo;

    invoke-direct {v2, p0}, Lcom/flybird/FBInput$DecorViewInfo;-><init>(Lcom/flybird/FBInput;)V

    .line 482
    iget-object v0, p0, Lcom/flybird/FBInput;->e:Lcom/flybird/FBDocument;

    invoke-virtual {v0}, Lcom/flybird/FBDocument;->getShowingDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBInput;->e:Lcom/flybird/FBDocument;

    invoke-virtual {v0}, Lcom/flybird/FBDocument;->getShowingDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    move v1, v0

    .line 484
    :goto_0
    if-nez v1, :cond_1

    .line 485
    iget-object v0, p0, Lcom/flybird/FBInput;->e:Lcom/flybird/FBDocument;

    iget-object v0, v0, Lcom/flybird/FBDocument;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 489
    :goto_1
    iput-object v0, v2, Lcom/flybird/FBInput$DecorViewInfo;->a:Landroid/view/View;

    .line 490
    iput-boolean v1, v2, Lcom/flybird/FBInput$DecorViewInfo;->b:Z

    .line 491
    return-object v2

    .line 482
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    .line 487
    :cond_1
    iget-object v0, p0, Lcom/flybird/FBInput;->e:Lcom/flybird/FBDocument;

    invoke-virtual {v0}, Lcom/flybird/FBDocument;->getShowingDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    goto :goto_1
.end method

.method static synthetic c(Lcom/flybird/FBInput;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/flybird/FBInput;->y:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/flybird/FBInput;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/flybird/FBInput;->t:Ljava/lang/String;

    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 545
    iget-object v0, p0, Lcom/flybird/FBInput;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBInput;->a:Ljava/lang/String;

    const-string/jumbo v1, "payspwd"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 556
    :cond_0
    :goto_0
    return-void

    .line 548
    :cond_1
    iget-object v0, p0, Lcom/flybird/FBInput;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/flybird/FBInput;->m:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 549
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flybird/FBInput;->r:Z

    .line 550
    iget-object v0, p0, Lcom/flybird/FBInput;->k:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 551
    iget-object v0, p0, Lcom/flybird/FBInput;->k:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/flybird/FBInput;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 553
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flybird/FBInput;->r:Z

    .line 554
    iget-object v0, p0, Lcom/flybird/FBInput;->k:Landroid/widget/EditText;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/flybird/FBInput;)V
    .locals 0

    .prologue
    .line 544
    invoke-direct {p0}, Lcom/flybird/FBInput;->d()V

    return-void
.end method

.method static synthetic e(Lcom/flybird/FBInput;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/flybird/FBInput;->l:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic f(Lcom/flybird/FBInput;)Landroid/view/View;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/flybird/FBInput;->x:Landroid/view/View;

    return-object v0
.end method

.method static synthetic g(Lcom/flybird/FBInput;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/flybird/FBInput;->t:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/flybird/FBInput;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/flybird/FBInput;->u:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method final a()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 397
    iget-object v0, p0, Lcom/flybird/FBInput;->e:Lcom/flybird/FBDocument;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBInput;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 464
    :cond_0
    :goto_0
    return-void

    .line 400
    :cond_1
    iget-object v0, p0, Lcom/flybird/FBInput;->e:Lcom/flybird/FBDocument;

    invoke-virtual {v0}, Lcom/flybird/FBDocument;->isDefaultKeyboard()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/flybird/FBInput;->e:Lcom/flybird/FBDocument;

    invoke-virtual {v0}, Lcom/flybird/FBDocument;->isDefaultKeyboard()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/flybird/FBInput;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/flybird/FBInput;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/android/app/template/util/UiUtil;->isUseDefaultKeyboard(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 401
    :cond_2
    iget-object v0, p0, Lcom/flybird/FBInput;->e:Lcom/flybird/FBDocument;

    invoke-virtual {v0}, Lcom/flybird/FBDocument;->isDefaultKeyboard()Z

    move-result v0

    if-nez v0, :cond_3

    .line 402
    iget-object v0, p0, Lcom/flybird/FBInput;->e:Lcom/flybird/FBDocument;

    invoke-virtual {v0}, Lcom/flybird/FBDocument;->getTemplateKeyboardService()Lcom/alipay/android/app/template/TemplateKeyboardService;

    move-result-object v0

    invoke-direct {p0}, Lcom/flybird/FBInput;->c()Lcom/flybird/FBInput$DecorViewInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/flybird/FBInput$DecorViewInfo;->a:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/alipay/android/app/template/TemplateKeyboardService;->hideKeyboard(Landroid/view/View;)Z

    .line 405
    :cond_3
    iget-object v0, p0, Lcom/flybird/FBInput;->e:Lcom/flybird/FBDocument;

    invoke-virtual {v0}, Lcom/flybird/FBDocument;->isOnloadFinish()Z

    move-result v0

    if-nez v0, :cond_b

    .line 406
    const/16 v6, 0x258

    .line 408
    :goto_1
    iget-object v0, p0, Lcom/flybird/FBInput;->e:Lcom/flybird/FBDocument;

    invoke-virtual {v0}, Lcom/flybird/FBDocument;->getDefaultKeyboardService()Lcom/alipay/android/app/template/TemplateKeyboardService;

    move-result-object v0

    iget-object v1, p0, Lcom/flybird/FBInput;->k:Landroid/widget/EditText;

    move-object v3, v2

    move-object v4, v2

    invoke-interface/range {v0 .. v6}, Lcom/alipay/android/app/template/TemplateKeyboardService;->showKeyboard(Landroid/widget/EditText;Lcom/alipay/android/app/template/KeyboardType;Landroid/view/View;Landroid/view/View;ZI)Z

    goto :goto_0

    .line 411
    :cond_4
    invoke-direct {p0}, Lcom/flybird/FBInput;->c()Lcom/flybird/FBInput$DecorViewInfo;

    move-result-object v0

    .line 412
    iget-object v4, v0, Lcom/flybird/FBInput$DecorViewInfo;->a:Landroid/view/View;

    .line 413
    iget-boolean v6, v0, Lcom/flybird/FBInput$DecorViewInfo;->b:Z

    .line 414
    iget-object v0, p0, Lcom/flybird/FBInput;->e:Lcom/flybird/FBDocument;

    invoke-virtual {v0}, Lcom/flybird/FBDocument;->getDefaultKeyboardService()Lcom/alipay/android/app/template/TemplateKeyboardService;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/alipay/android/app/template/TemplateKeyboardService;->hideKeyboard(Landroid/view/View;)Z

    move-result v0

    .line 416
    if-nez v6, :cond_5

    iget-object v1, p0, Lcom/flybird/FBInput;->e:Lcom/flybird/FBDocument;

    invoke-virtual {v1}, Lcom/flybird/FBDocument;->isFullscreen()Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v3, 0x1

    .line 417
    :goto_2
    if-nez v6, :cond_7

    .line 418
    iget-object v1, p0, Lcom/flybird/FBInput;->e:Lcom/flybird/FBDocument;

    invoke-virtual {v1}, Lcom/flybird/FBDocument;->isFullscreen()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 419
    iget-object v1, p0, Lcom/flybird/FBInput;->e:Lcom/flybird/FBDocument;

    invoke-virtual {v1}, Lcom/flybird/FBDocument;->getKeyboardParentView()Landroid/widget/LinearLayout;

    move-result-object v2

    .line 427
    :goto_3
    iget-object v1, p0, Lcom/flybird/FBInput;->e:Lcom/flybird/FBDocument;

    invoke-virtual {v1}, Lcom/flybird/FBDocument;->isOnloadFinish()Z

    move-result v1

    if-nez v1, :cond_8

    .line 428
    iget-object v7, p0, Lcom/flybird/FBInput;->k:Landroid/widget/EditText;

    new-instance v0, Lcom/flybird/FBInput$5;

    move-object v1, p0

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/flybird/FBInput$5;-><init>(Lcom/flybird/FBInput;Landroid/view/View;ZLandroid/view/View;Z)V

    .line 443
    const-wide/16 v1, 0x258

    .line 432
    invoke-virtual {v7, v0, v1, v2}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_5
    move v3, v5

    .line 416
    goto :goto_2

    .line 421
    :cond_6
    const v1, 0x1020002

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    goto :goto_3

    .line 424
    :cond_7
    iget-object v1, p0, Lcom/flybird/FBInput;->e:Lcom/flybird/FBDocument;

    iget-object v1, v1, Lcom/flybird/FBDocument;->mContext:Landroid/app/Activity;

    const-string/jumbo v2, "dialog_linear_layout"

    invoke-static {v1, v2}, Lcom/alipay/android/app/template/ResUtils;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    goto :goto_3

    .line 445
    :cond_8
    if-eqz v0, :cond_a

    .line 446
    const/16 v7, 0xc8

    .line 448
    :goto_4
    if-nez v3, :cond_9

    .line 449
    invoke-direct {p0, v2, v4}, Lcom/flybird/FBInput;->a(Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    move-result-object v5

    .line 451
    :goto_5
    iget-object v0, p0, Lcom/flybird/FBInput;->e:Lcom/flybird/FBDocument;

    invoke-virtual {v0}, Lcom/flybird/FBDocument;->getTemplateKeyboardService()Lcom/alipay/android/app/template/TemplateKeyboardService;

    move-result-object v1

    iget-object v2, p0, Lcom/flybird/FBInput;->k:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/flybird/FBInput;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/android/app/template/util/UiUtil;->getKeyboardType(Ljava/lang/String;)Lcom/alipay/android/app/template/KeyboardType;

    move-result-object v3

    invoke-interface/range {v1 .. v7}, Lcom/alipay/android/app/template/TemplateKeyboardService;->showKeyboard(Landroid/widget/EditText;Lcom/alipay/android/app/template/KeyboardType;Landroid/view/View;Landroid/view/View;ZI)Z

    .line 454
    invoke-static {}, Lcom/alipay/android/app/template/util/UiUtil;->isGTP8600()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/flybird/FBInput;->k:Landroid/widget/EditText;

    new-instance v1, Lcom/flybird/FBInput$6;

    invoke-direct {v1, p0}, Lcom/flybird/FBInput$6;-><init>(Lcom/flybird/FBInput;)V

    .line 461
    const-wide/16 v2, 0xc8

    .line 455
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_9
    move-object v5, v2

    goto :goto_5

    :cond_a
    move v7, v5

    goto :goto_4

    :cond_b
    move v6, v5

    goto/16 :goto_1
.end method

.method public doDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 637
    invoke-super {p0}, Lcom/flybird/FBView;->doDestroy()V

    .line 638
    iput-object v0, p0, Lcom/flybird/FBInput;->k:Landroid/widget/EditText;

    .line 639
    iput-object v0, p0, Lcom/flybird/FBInput;->l:Landroid/widget/CheckBox;

    .line 640
    iput-object v0, p0, Lcom/flybird/FBInput;->m:Landroid/graphics/drawable/Drawable;

    .line 641
    return-void
.end method

.method public getEncryptValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 626
    iget-object v0, p0, Lcom/flybird/FBInput;->a:Ljava/lang/String;

    const-string/jumbo v1, "payspwd"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBInput;->a:Ljava/lang/String;

    const-string/jumbo v1, "paypwd"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 627
    :cond_0
    iget-object v0, p0, Lcom/flybird/FBInput;->e:Lcom/flybird/FBDocument;

    invoke-virtual {v0}, Lcom/flybird/FBDocument;->getTemplatePasswordService()Lcom/alipay/android/app/template/TemplatePasswordService;

    move-result-object v0

    .line 628
    if-eqz v0, :cond_1

    .line 629
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/alipay/android/app/template/TemplatePasswordService;->getText(I)Ljava/lang/String;

    move-result-object v0

    .line 632
    :goto_0
    return-object v0

    :cond_1
    invoke-super {p0}, Lcom/flybird/FBView;->getEncryptValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 535
    iget-object v0, p0, Lcom/flybird/FBInput;->a:Ljava/lang/String;

    const-string/jumbo v1, "month"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 536
    iget-object v0, p0, Lcom/flybird/FBInput;->v:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBInput;->v:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/flybird/FBInput;->e:Lcom/flybird/FBDocument;

    iget-object v0, v0, Lcom/flybird/FBDocument;->mContext:Landroid/app/Activity;

    iget-object v1, p0, Lcom/flybird/FBInput;->e:Lcom/flybird/FBDocument;

    iget-object v1, v1, Lcom/flybird/FBDocument;->mContext:Landroid/app/Activity;

    const-string/jumbo v2, "template_month_dialog_title"

    invoke-static {v1, v2}, Lcom/alipay/android/app/template/ResUtils;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/app/template/YearMonthPickerDialog;

    iget-object v2, p0, Lcom/flybird/FBInput;->e:Lcom/flybird/FBDocument;

    iget-object v2, v2, Lcom/flybird/FBDocument;->mContext:Landroid/app/Activity;

    invoke-direct {v1, v0, v2}, Lcom/alipay/android/app/template/YearMonthPickerDialog;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    new-instance v0, Lcom/flybird/FBInput$7;

    invoke-direct {v0, p0, v1}, Lcom/flybird/FBInput$7;-><init>(Lcom/flybird/FBInput;Lcom/alipay/android/app/template/YearMonthPickerDialog;)V

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/template/YearMonthPickerDialog;->setPositiveListener(Landroid/content/DialogInterface$OnClickListener;)V

    new-instance v0, Lcom/flybird/FBInput$8;

    invoke-direct {v0, p0}, Lcom/flybird/FBInput$8;-><init>(Lcom/flybird/FBInput;)V

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/template/YearMonthPickerDialog;->setNegativeListener(Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/flybird/FBInput;->t:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flybird/FBInput;->t:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_3

    :cond_1
    invoke-virtual {v1}, Lcom/alipay/android/app/template/YearMonthPickerDialog;->setCurrentDate()V

    :goto_0
    invoke-virtual {v1}, Lcom/alipay/android/app/template/YearMonthPickerDialog;->show()Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/flybird/FBInput;->v:Landroid/app/Dialog;

    .line 542
    :cond_2
    :goto_1
    return-void

    .line 536
    :cond_3
    iget-object v0, p0, Lcom/flybird/FBInput;->t:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/flybird/FBInput;->u:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/alipay/android/app/template/YearMonthPickerDialog;->setStartPickDate(II)V

    goto :goto_0

    .line 537
    :cond_4
    iget-object v0, p0, Lcom/flybird/FBInput;->a:Ljava/lang/String;

    const-string/jumbo v1, "checkbox"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 538
    invoke-virtual {p0}, Lcom/flybird/FBInput;->a()V

    goto :goto_1

    .line 540
    :cond_5
    invoke-super {p0, p1}, Lcom/flybird/FBView;->onClick(Landroid/view/View;)V

    goto :goto_1
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4

    .prologue
    .line 589
    iget-object v0, p0, Lcom/flybird/FBInput;->e:Lcom/flybird/FBDocument;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBInput;->e:Lcom/flybird/FBDocument;

    iget-object v0, v0, Lcom/flybird/FBDocument;->mContext:Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 605
    :cond_0
    :goto_0
    return-void

    .line 592
    :cond_1
    iget-object v0, p0, Lcom/flybird/FBInput;->e:Lcom/flybird/FBDocument;

    iget-object v0, v0, Lcom/flybird/FBDocument;->mRoot:Lcom/flybird/FBView;

    invoke-virtual {v0}, Lcom/flybird/FBView;->getOpacity()F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3fb999999999999aL    # 0.1

    cmpg-double v0, v0, v2

    if-lez v0, :cond_0

    .line 595
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/flybird/FBInput;->a:Ljava/lang/String;

    const-string/jumbo v1, "payspwd"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 597
    iget-object v0, p0, Lcom/flybird/FBInput;->k:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/flybird/FBInput;->k:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 599
    :cond_2
    iget-object v0, p0, Lcom/flybird/FBInput;->e:Lcom/flybird/FBDocument;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/flybird/FBInput;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/flybird/FBInput;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/android/app/template/util/UiUtil;->isUseDefaultKeyboard(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/flybird/FBInput;->e:Lcom/flybird/FBDocument;

    invoke-virtual {v0}, Lcom/flybird/FBDocument;->isDefaultKeyboard()Z

    move-result v0

    if-nez v0, :cond_3

    .line 600
    iget-object v0, p0, Lcom/flybird/FBInput;->e:Lcom/flybird/FBDocument;

    invoke-virtual {v0}, Lcom/flybird/FBDocument;->getTemplateKeyboardService()Lcom/alipay/android/app/template/TemplateKeyboardService;

    move-result-object v0

    invoke-direct {p0}, Lcom/flybird/FBInput;->c()Lcom/flybird/FBInput$DecorViewInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/flybird/FBInput$DecorViewInfo;->a:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/alipay/android/app/template/TemplateKeyboardService;->hideKeyboard(Landroid/view/View;)Z

    .line 602
    :cond_3
    invoke-virtual {p0}, Lcom/flybird/FBInput;->a()V

    goto :goto_0
.end method

.method public onLoadFinish()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 351
    invoke-super {p0}, Lcom/flybird/FBView;->onLoadFinish()V

    .line 352
    invoke-direct {p0}, Lcom/flybird/FBInput;->d()V

    .line 353
    iget-object v0, p0, Lcom/flybird/FBInput;->a:Ljava/lang/String;

    const-string/jumbo v1, "checkbox"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/flybird/FBInput;->a:Ljava/lang/String;

    const-string/jumbo v1, "month"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 355
    iget-object v0, p0, Lcom/flybird/FBInput;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/flybird/FBInput;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->setSingleLine()V

    .line 357
    iget-object v0, p0, Lcom/flybird/FBInput;->k:Landroid/widget/EditText;

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setHorizontallyScrolling(Z)V

    .line 358
    iget-object v0, p0, Lcom/flybird/FBInput;->e:Lcom/flybird/FBDocument;

    iget-object v0, v0, Lcom/flybird/FBDocument;->mContext:Landroid/app/Activity;

    iget-object v1, p0, Lcom/flybird/FBInput;->k:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/alipay/android/app/template/util/UiUtil;->setSafeKeyboardSoftInput(Landroid/app/Activity;Landroid/widget/EditText;)V

    .line 359
    iget-object v0, p0, Lcom/flybird/FBInput;->k:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 360
    iget-object v0, p0, Lcom/flybird/FBInput;->k:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 363
    :cond_0
    iget-boolean v0, p0, Lcom/flybird/FBInput;->w:Z

    if-eqz v0, :cond_1

    .line 364
    iget-object v0, p0, Lcom/flybird/FBInput;->e:Lcom/flybird/FBDocument;

    invoke-virtual {v0, p0}, Lcom/flybird/FBDocument;->setAutoFocusInput(Lcom/flybird/FBInput;)V

    .line 365
    iget-object v0, p0, Lcom/flybird/FBInput;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 367
    invoke-virtual {v0, v6}, Landroid/view/View;->setFocusable(Z)V

    .line 368
    invoke-virtual {v0, v6}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 370
    :cond_1
    iget-object v0, p0, Lcom/flybird/FBInput;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 371
    if-eqz v0, :cond_2

    .line 372
    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 373
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 374
    iget-object v1, p0, Lcom/flybird/FBInput;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 394
    :cond_2
    :goto_0
    return-void

    .line 378
    :cond_3
    iget-object v0, p0, Lcom/flybird/FBInput;->a:Ljava/lang/String;

    const-string/jumbo v1, "checkbox"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 379
    iget-object v0, p0, Lcom/flybird/FBInput;->z:[Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 380
    iget-object v0, p0, Lcom/flybird/FBInput;->l:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/flybird/FBInput;->e:Lcom/flybird/FBDocument;

    iget-object v1, v1, Lcom/flybird/FBDocument;->mContext:Landroid/app/Activity;

    iget-object v2, p0, Lcom/flybird/FBInput;->a:Ljava/lang/String;

    iget v3, p0, Lcom/flybird/FBInput;->c:I

    iget v4, p0, Lcom/flybird/FBInput;->d:I

    iget-object v5, p0, Lcom/flybird/FBInput;->z:[Ljava/lang/String;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/alipay/android/app/template/util/UiUtil;->genButtonSelector(Landroid/content/Context;Ljava/lang/String;II[Ljava/lang/String;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 381
    iget-object v0, p0, Lcom/flybird/FBInput;->l:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 385
    :cond_4
    iget-object v0, p0, Lcom/flybird/FBInput;->a:Ljava/lang/String;

    const-string/jumbo v1, "month"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 386
    iput-boolean v7, p0, Lcom/flybird/FBInput;->s:Z

    .line 387
    iget-object v0, p0, Lcom/flybird/FBInput;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 388
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_5

    .line 389
    iget-object v1, p0, Lcom/flybird/FBInput;->k:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 391
    :cond_5
    iput-boolean v6, p0, Lcom/flybird/FBInput;->s:Z

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 561
    iget-boolean v1, p0, Lcom/flybird/FBInput;->r:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/flybird/FBInput;->m:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 562
    iget v1, p0, Lcom/flybird/FBInput;->c:I

    .line 563
    iget v2, p0, Lcom/flybird/FBInput;->d:I

    .line 564
    iget-object v3, p0, Lcom/flybird/FBInput;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 565
    iget-object v4, p0, Lcom/flybird/FBInput;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 566
    sub-int/2addr v1, v3

    div-int/lit8 v5, v3, 0x4

    sub-int/2addr v1, v5

    iput v1, p0, Lcom/flybird/FBInput;->n:I

    .line 567
    sub-int v1, v2, v4

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/flybird/FBInput;->p:I

    .line 568
    iget v1, p0, Lcom/flybird/FBInput;->n:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/flybird/FBInput;->o:I

    .line 569
    iget v1, p0, Lcom/flybird/FBInput;->p:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/flybird/FBInput;->q:I

    .line 572
    :cond_0
    iget v1, p0, Lcom/flybird/FBInput;->n:I

    if-lez v1, :cond_2

    iget-boolean v1, p0, Lcom/flybird/FBInput;->r:Z

    if-eqz v1, :cond_2

    .line 573
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 574
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 575
    iget v3, p0, Lcom/flybird/FBInput;->n:I

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_2

    iget v3, p0, Lcom/flybird/FBInput;->o:I

    int-to-float v3, v3

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_2

    iget v1, p0, Lcom/flybird/FBInput;->p:I

    int-to-float v1, v1

    cmpl-float v1, v2, v1

    if-ltz v1, :cond_2

    iget v1, p0, Lcom/flybird/FBInput;->q:I

    int-to-float v1, v1

    cmpg-float v1, v2, v1

    if-gtz v1, :cond_2

    .line 576
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 577
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/flybird/FBInput;->u:Ljava/lang/String;

    .line 578
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/flybird/FBInput;->t:Ljava/lang/String;

    .line 579
    iget-object v1, p0, Lcom/flybird/FBInput;->k:Landroid/widget/EditText;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 584
    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v0, p0, Lcom/flybird/FBInput;->k:Landroid/widget/EditText;

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public updateAttr(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 185
    const-string/jumbo v0, "value"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 186
    iput-boolean v2, p0, Lcom/flybird/FBInput;->s:Z

    .line 187
    iget-object v0, p0, Lcom/flybird/FBInput;->k:Landroid/widget/EditText;

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v0, p0, Lcom/flybird/FBInput;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 189
    instance-of v0, v1, Landroid/text/Spannable;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 190
    check-cast v0, Landroid/text/Spannable;

    .line 191
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/flybird/FBInput;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flybird/FBInput;->y:Ljava/lang/String;

    .line 194
    iput-boolean v3, p0, Lcom/flybird/FBInput;->s:Z

    .line 195
    const-string/jumbo v0, ""

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    iput-boolean v2, p0, Lcom/flybird/FBInput;->r:Z

    .line 345
    :cond_1
    :goto_0
    return-void

    .line 198
    :cond_2
    const-string/jumbo v0, "autofocus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 199
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/flybird/FBInput;->w:Z

    goto :goto_0

    .line 200
    :cond_3
    const-string/jumbo v0, "keyboard"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 201
    iput-object p2, p0, Lcom/flybird/FBInput;->b:Ljava/lang/String;

    goto :goto_0

    .line 202
    :cond_4
    const-string/jumbo v0, "placeholder"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 203
    iget-object v0, p0, Lcom/flybird/FBInput;->k:Landroid/widget/EditText;

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 204
    invoke-static {}, Lcom/alipay/android/app/template/util/UiUtil;->isOppoDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/flybird/FBInput;->k:Landroid/widget/EditText;

    const v1, -0x333334

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    goto :goto_0

    .line 207
    :cond_5
    const-string/jumbo v0, "maxlength"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 208
    iget-object v0, p0, Lcom/flybird/FBInput;->k:Landroid/widget/EditText;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMaxEms(I)V

    goto :goto_0

    .line 209
    :cond_6
    const-string/jumbo v0, "checked"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 210
    iget-object v0, p0, Lcom/flybird/FBInput;->a:Ljava/lang/String;

    const-string/jumbo v1, "checkbox"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    iput-boolean v2, p0, Lcom/flybird/FBInput;->s:Z

    .line 212
    iget-object v0, p0, Lcom/flybird/FBInput;->l:Landroid/widget/CheckBox;

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 213
    iput-boolean v3, p0, Lcom/flybird/FBInput;->s:Z

    goto :goto_0

    .line 215
    :cond_7
    const-string/jumbo v0, "disabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 216
    iput-boolean v2, p0, Lcom/flybird/FBInput;->r:Z

    .line 217
    iget-object v1, p0, Lcom/flybird/FBInput;->k:Landroid/widget/EditText;

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v2

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 218
    iget-object v0, p0, Lcom/flybird/FBInput;->a:Ljava/lang/String;

    const-string/jumbo v1, "checkbox"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 219
    iget-object v0, p0, Lcom/flybird/FBInput;->l:Landroid/widget/CheckBox;

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_8
    move v0, v3

    .line 217
    goto :goto_1

    :cond_9
    move v2, v3

    .line 219
    goto :goto_2

    .line 221
    :cond_a
    const-string/jumbo v0, "type"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 222
    iput-object p2, p0, Lcom/flybird/FBInput;->a:Ljava/lang/String;

    .line 223
    const-string/jumbo v0, "checkbox"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 224
    iget-object v0, p0, Lcom/flybird/FBInput;->e:Lcom/flybird/FBDocument;

    iput-boolean v2, v0, Lcom/flybird/FBDocument;->b:Z

    .line 225
    iget-object v0, p0, Lcom/flybird/FBInput;->l:Landroid/widget/CheckBox;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/flybird/FBInput;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/flybird/FBInput;->l:Landroid/widget/CheckBox;

    if-eq v0, v1, :cond_1

    .line 226
    :cond_b
    new-instance v0, Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/flybird/FBInput;->e:Lcom/flybird/FBDocument;

    iget-object v1, v1, Lcom/flybird/FBDocument;->mContext:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flybird/FBInput;->l:Landroid/widget/CheckBox;

    .line 227
    iget-object v0, p0, Lcom/flybird/FBInput;->l:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/flybird/FBInput;->j:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 228
    iget-object v0, p0, Lcom/flybird/FBInput;->l:Landroid/widget/CheckBox;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 229
    iget-object v0, p0, Lcom/flybird/FBInput;->l:Landroid/widget/CheckBox;

    new-instance v1, Lcom/flybird/FBInput$2;

    invoke-direct {v1, p0}, Lcom/flybird/FBInput$2;-><init>(Lcom/flybird/FBInput;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 245
    iget-object v0, p0, Lcom/flybird/FBInput;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 246
    if-eqz v0, :cond_1

    .line 247
    iget-object v1, p0, Lcom/flybird/FBInput;->l:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 248
    iget-object v1, p0, Lcom/flybird/FBInput;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 249
    iget-object v0, p0, Lcom/flybird/FBInput;->l:Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/flybird/FBInput;->mView:Landroid/view/View;

    goto/16 :goto_0

    .line 253
    :cond_c
    const-string/jumbo v0, "payspwd"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 255
    iget-object v0, p0, Lcom/flybird/FBInput;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/flybird/FBInput;->x:Landroid/view/View;

    if-ne v0, v1, :cond_d

    iget-object v0, p0, Lcom/flybird/FBInput;->x:Landroid/view/View;

    if-nez v0, :cond_f

    .line 256
    :cond_d
    iget-object v0, p0, Lcom/flybird/FBInput;->x:Landroid/view/View;

    if-nez v0, :cond_e

    .line 257
    iget-object v0, p0, Lcom/flybird/FBInput;->e:Lcom/flybird/FBDocument;

    iget-object v0, v0, Lcom/flybird/FBDocument;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 258
    iget-object v1, p0, Lcom/flybird/FBInput;->e:Lcom/flybird/FBDocument;

    iget-object v1, v1, Lcom/flybird/FBDocument;->mContext:Landroid/app/Activity;

    const-string/jumbo v4, "fb_simple_password"

    invoke-static {v1, v4}, Lcom/alipay/android/app/template/ResUtils;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 259
    iput-object v0, p0, Lcom/flybird/FBInput;->x:Landroid/view/View;

    .line 261
    :cond_e
    iget-object v0, p0, Lcom/flybird/FBInput;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 262
    if-eqz v0, :cond_f

    .line 263
    iget-object v1, p0, Lcom/flybird/FBInput;->x:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 264
    iget-object v1, p0, Lcom/flybird/FBInput;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 265
    iget-object v0, p0, Lcom/flybird/FBInput;->x:Landroid/view/View;

    iput-object v0, p0, Lcom/flybird/FBInput;->mView:Landroid/view/View;

    .line 269
    :cond_f
    iget-object v0, p0, Lcom/flybird/FBInput;->x:Landroid/view/View;

    iget-object v1, p0, Lcom/flybird/FBInput;->e:Lcom/flybird/FBDocument;

    iget-object v1, v1, Lcom/flybird/FBDocument;->mContext:Landroid/app/Activity;

    const-string/jumbo v4, "spwd_input"

    invoke-static {v1, v4}, Lcom/alipay/android/app/template/ResUtils;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/flybird/FBInput;->k:Landroid/widget/EditText;

    .line 270
    iget-object v0, p0, Lcom/flybird/FBInput;->k:Landroid/widget/EditText;

    new-instance v1, Lcom/alipay/android/app/template/FBSimplePasswordTextWatcher;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/template/FBSimplePasswordTextWatcher;-><init>(Lcom/flybird/FBInput;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 271
    invoke-direct {p0}, Lcom/flybird/FBInput;->b()V

    .line 272
    iget-object v0, p0, Lcom/flybird/FBInput;->k:Landroid/widget/EditText;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 273
    iget-object v0, p0, Lcom/flybird/FBInput;->k:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 274
    iget-object v0, p0, Lcom/flybird/FBInput;->k:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 275
    iget-object v0, p0, Lcom/flybird/FBInput;->k:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 276
    iget-object v0, p0, Lcom/flybird/FBInput;->k:Landroid/widget/EditText;

    new-array v1, v3, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/4 v4, 0x6

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 277
    iget-object v0, p0, Lcom/flybird/FBInput;->k:Landroid/widget/EditText;

    new-instance v1, Lcom/flybird/FBInput$3;

    invoke-direct {v1, p0}, Lcom/flybird/FBInput$3;-><init>(Lcom/flybird/FBInput;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 303
    iget-object v0, p0, Lcom/flybird/FBInput;->x:Landroid/view/View;

    new-instance v1, Lcom/flybird/FBInput$4;

    invoke-direct {v1, p0}, Lcom/flybird/FBInput$4;-><init>(Lcom/flybird/FBInput;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 311
    :cond_10
    iget-object v0, p0, Lcom/flybird/FBInput;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/flybird/FBInput;->k:Landroid/widget/EditText;

    if-eq v0, v1, :cond_11

    .line 312
    iget-object v0, p0, Lcom/flybird/FBInput;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 313
    if-eqz v0, :cond_11

    .line 314
    iget-object v1, p0, Lcom/flybird/FBInput;->k:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 315
    iget-object v1, p0, Lcom/flybird/FBInput;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 316
    iget-object v0, p0, Lcom/flybird/FBInput;->k:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/flybird/FBInput;->mView:Landroid/view/View;

    .line 320
    :cond_11
    const-string/jumbo v0, "num"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string/jumbo v0, "number"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 321
    :cond_12
    iget-object v0, p0, Lcom/flybird/FBInput;->k:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 322
    iget-object v0, p0, Lcom/flybird/FBInput;->k:Landroid/widget/EditText;

    invoke-static {}, Lcom/alipay/android/app/template/util/CardNoKeyListener;->getInstance()Lcom/alipay/android/app/template/util/CardNoKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 335
    :cond_13
    :goto_3
    iget-object v0, p0, Lcom/flybird/FBInput;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->setSingleLine()V

    .line 336
    iget-object v0, p0, Lcom/flybird/FBInput;->k:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHorizontallyScrolling(Z)V

    .line 337
    iget-object v0, p0, Lcom/flybird/FBInput;->e:Lcom/flybird/FBDocument;

    iget-object v0, v0, Lcom/flybird/FBDocument;->mContext:Landroid/app/Activity;

    iget-object v1, p0, Lcom/flybird/FBInput;->k:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/alipay/android/app/template/util/UiUtil;->setSafeKeyboardSoftInput(Landroid/app/Activity;Landroid/widget/EditText;)V

    .line 338
    iget-object v0, p0, Lcom/flybird/FBInput;->k:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 339
    iget-object v0, p0, Lcom/flybird/FBInput;->k:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 323
    :cond_14
    const-string/jumbo v0, "password"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string/jumbo v0, "paypwd"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 324
    :cond_15
    iget-object v0, p0, Lcom/flybird/FBInput;->k:Landroid/widget/EditText;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 325
    iget-object v0, p0, Lcom/flybird/FBInput;->k:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 326
    const-string/jumbo v0, "paypwd"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 327
    iget-object v0, p0, Lcom/flybird/FBInput;->k:Landroid/widget/EditText;

    new-instance v1, Lcom/alipay/android/app/template/FBPasswordTextWatcher;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/template/FBPasswordTextWatcher;-><init>(Lcom/flybird/FBInput;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 329
    :cond_16
    invoke-direct {p0}, Lcom/flybird/FBInput;->b()V

    goto :goto_3

    .line 330
    :cond_17
    const-string/jumbo v0, "month"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 331
    iget-object v0, p0, Lcom/flybird/FBInput;->k:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 332
    iget-object v0, p0, Lcom/flybird/FBInput;->k:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 333
    iget-object v0, p0, Lcom/flybird/FBInput;->k:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setClickable(Z)V

    goto :goto_3

    .line 343
    :cond_18
    invoke-super {p0, p1, p2}, Lcom/flybird/FBView;->updateAttr(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public updateCSS(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 135
    const-string/jumbo v0, "font-size"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    const-string/jumbo v0, "px"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 137
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 138
    iget-object v1, p0, Lcom/flybird/FBInput;->k:Landroid/widget/EditText;

    invoke-virtual {v1, v2, v0}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 180
    :goto_0
    return-void

    .line 139
    :cond_0
    const-string/jumbo v0, "color"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/flybird/FBInput;->k:Landroid/widget/EditText;

    invoke-static {p2}, Lcom/flybird/FBTools;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_0

    .line 141
    :cond_1
    const-string/jumbo v0, "font-weight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 142
    const-string/jumbo v0, "bold"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 143
    iget-object v0, p0, Lcom/flybird/FBInput;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    goto :goto_0

    .line 145
    :cond_2
    iget-object v0, p0, Lcom/flybird/FBInput;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    goto :goto_0

    .line 149
    :cond_3
    const-string/jumbo v0, "background-image"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 150
    const-string/jumbo v0, "url"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 151
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 154
    :cond_4
    iget-object v0, p0, Lcom/flybird/FBInput;->z:[Ljava/lang/String;

    if-nez v0, :cond_5

    .line 155
    new-array v0, v3, [Ljava/lang/String;

    iput-object v0, p0, Lcom/flybird/FBInput;->z:[Ljava/lang/String;

    .line 157
    :cond_5
    iget-object v0, p0, Lcom/flybird/FBInput;->z:[Ljava/lang/String;

    aput-object p2, v0, v1

    goto :goto_0

    .line 159
    :cond_6
    const-string/jumbo v0, "background-image:checked"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 160
    const-string/jumbo v0, "url"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 161
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 163
    :cond_7
    iget-object v0, p0, Lcom/flybird/FBInput;->z:[Ljava/lang/String;

    if-nez v0, :cond_8

    .line 164
    new-array v0, v3, [Ljava/lang/String;

    iput-object v0, p0, Lcom/flybird/FBInput;->z:[Ljava/lang/String;

    .line 166
    :cond_8
    iget-object v0, p0, Lcom/flybird/FBInput;->z:[Ljava/lang/String;

    aput-object p2, v0, v2

    goto/16 :goto_0

    .line 167
    :cond_9
    const-string/jumbo v0, "background-image:disabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 168
    const-string/jumbo v0, "url"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 169
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 171
    :cond_a
    iget-object v0, p0, Lcom/flybird/FBInput;->z:[Ljava/lang/String;

    if-nez v0, :cond_b

    .line 172
    new-array v0, v3, [Ljava/lang/String;

    iput-object v0, p0, Lcom/flybird/FBInput;->z:[Ljava/lang/String;

    .line 174
    :cond_b
    iget-object v0, p0, Lcom/flybird/FBInput;->z:[Ljava/lang/String;

    const/4 v1, 0x2

    aput-object p2, v0, v1

    goto/16 :goto_0

    .line 178
    :cond_c
    invoke-super {p0, p1, p2}, Lcom/flybird/FBView;->updateCSS(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public updateFunc(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 609
    invoke-super {p0, p1, p2}, Lcom/flybird/FBView;->updateFunc(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    iget-object v0, p0, Lcom/flybird/FBInput;->a:Ljava/lang/String;

    const-string/jumbo v1, "checkbox"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 611
    const-string/jumbo v0, "focus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 612
    iput-boolean v2, p0, Lcom/flybird/FBInput;->w:Z

    .line 613
    iget-object v0, p0, Lcom/flybird/FBInput;->e:Lcom/flybird/FBDocument;

    invoke-virtual {v0}, Lcom/flybird/FBDocument;->isOnloadFinish()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/flybird/FBInput;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 615
    invoke-virtual {p0}, Lcom/flybird/FBInput;->a()V

    .line 622
    :cond_0
    :goto_0
    return-void

    .line 617
    :cond_1
    const-string/jumbo v0, "blur"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 618
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flybird/FBInput;->w:Z

    .line 619
    iget-object v0, p0, Lcom/flybird/FBInput;->e:Lcom/flybird/FBDocument;

    invoke-direct {p0}, Lcom/flybird/FBInput;->c()Lcom/flybird/FBInput$DecorViewInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/flybird/FBInput$DecorViewInfo;->a:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/flybird/FBDocument;->hiddenKeyboardService(Landroid/view/View;Z)Z

    goto :goto_0
.end method
