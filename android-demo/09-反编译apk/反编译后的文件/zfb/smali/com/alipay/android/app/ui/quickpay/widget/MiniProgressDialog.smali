.class public Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;
.super Landroid/app/Dialog;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Ljava/lang/CharSequence;

.field private c:Landroid/app/Activity;

.field private d:Lcom/alipay/android/app/ui/quickpay/widget/LoopView;

.field private e:J

.field private final f:I

.field private final g:J

.field private h:I

.field private i:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 66
    const-string/jumbo v0, "ProgressDialog"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->h(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 36
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;->e:J

    .line 37
    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;->f:I

    .line 38
    const-wide/32 v0, 0x9c40

    iput-wide v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;->g:J

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;->h:I

    .line 41
    new-instance v0, Lcom/alipay/android/app/ui/quickpay/widget/q;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/q;-><init>(Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;->i:Landroid/os/Handler;

    .line 67
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;->c:Landroid/app/Activity;

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;-><init>(Landroid/content/Context;)V

    .line 72
    iput p2, p0, Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;->h:I

    .line 73
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;->i:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 74
    return-void
.end method

.method private static a(Landroid/content/Context;F)I
    .locals 1

    .prologue
    .line 204
    if-nez p0, :cond_0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 205
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 206
    mul-float/2addr v0, p1

    float-to-int v0, v0

    return v0

    .line 204
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;)J
    .locals 2

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;->e:J

    return-wide v0
.end method

.method static synthetic b(Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;)I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;->h:I

    return v0
.end method

.method public static b()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 113
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    if-eqz v2, :cond_0

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    .line 128
    :cond_1
    :goto_0
    return v0

    .line 116
    :cond_2
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 117
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 118
    const-string/jumbo v4, "lenovo"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "a820t"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 121
    :cond_3
    const-string/jumbo v4, "meizu"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string/jumbo v4, "m040"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 124
    :cond_4
    const-string/jumbo v4, "vivo"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string/jumbo v2, "y11"

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_5
    move v0, v1

    .line 128
    goto :goto_0
.end method

.method static synthetic c(Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;)J
    .locals 2

    .prologue
    .line 30
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;->e:J

    return-wide v0
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;)Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;
    .locals 2

    .prologue
    .line 81
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;->b:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;->b:Ljava/lang/CharSequence;

    .line 84
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    :cond_0
    return-object p0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;->b:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dismiss()V
    .locals 2

    .prologue
    .line 226
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;->i:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 227
    invoke-super {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 230
    :cond_0
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;->e:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;->a:Landroid/widget/TextView;

    .line 235
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    .prologue
    const/high16 v9, 0x42fa0000    # 125.0f

    const/high16 v5, 0x41000000    # 8.0f

    const/4 v8, 0x1

    const/4 v7, -0x2

    const/4 v6, 0x0

    .line 95
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 96
    const-string/jumbo v0, "flybird_dialog_progress"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->f(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;->setContentView(I)V

    .line 97
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;->c:Landroid/app/Activity;

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v0, v7, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v8, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-static {v1, v5}, Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v0, v6, v6, v6, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const-string/jumbo v0, "alipay_logo"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "msp_security_monitor"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(I)V

    const/high16 v0, 0x41900000    # 18.0f

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v0, -0x1

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v0, 0x10

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v8, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;->a:Landroid/widget/TextView;

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/widget/LoopView;

    invoke-direct {v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/LoopView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;->d:Lcom/alipay/android/app/ui/quickpay/widget/LoopView;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x42200000    # 40.0f

    invoke-static {v1, v4}, Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-static {v1, v5}, Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;->a(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v0, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v8, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v1, v4}, Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v6, v4, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v4, p0, Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;->d:Lcom/alipay/android/app/ui/quickpay/widget/LoopView;

    invoke-virtual {v4, v0}, Lcom/alipay/android/app/ui/quickpay/widget/LoopView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string/jumbo v0, "flybird_dialog_layout"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {v1, v9}, Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    invoke-static {v1, v9}, Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setMinimumWidth(I)V

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v4, 0x10

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0x11

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/high16 v5, -0x59000000

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 v5, 0x40a00000    # 5.0f

    invoke-static {v1, v5}, Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;->a(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;->d:Lcom/alipay/android/app/ui/quickpay/widget/LoopView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 98
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;->b:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    :cond_0
    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 108
    :goto_0
    return-void

    .line 105
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-string/jumbo v1, "flybird_mask_dialog_bg"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->c(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    goto :goto_0
.end method

.method public show()V
    .locals 4

    .prologue
    .line 211
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 212
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;->e:J

    .line 213
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;->h:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 214
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;->i:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 216
    :cond_0
    return-void
.end method
