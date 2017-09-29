.class public Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;
.super Landroid/view/View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar$SelectionChangeListener;
    }
.end annotation


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:Z

.field private e:I

.field private f:I

.field private g:I

.field private h:F

.field private i:I

.field private j:I

.field private k:I

.field private l:[Ljava/lang/String;

.field private m:[Landroid/text/StaticLayout;

.field private n:Landroid/text/TextPaint;

.field private o:Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar$SelectionChangeListener;

.field private p:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v0, 0x5

    const/4 v3, 0x0

    .line 64
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 39
    iput v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->e:I

    .line 40
    iput v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->f:I

    .line 44
    iput v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->i:I

    .line 51
    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->j:I

    .line 53
    iput v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->k:I

    .line 55
    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "200"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string/jumbo v2, "500"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "1000"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "5000"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "10000"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->l:[Ljava/lang/String;

    .line 159
    iput v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->p:I

    .line 65
    invoke-direct {p0, p1}, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->a(Landroid/content/Context;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v0, 0x5

    const/4 v3, 0x0

    .line 69
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    iput v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->e:I

    .line 40
    iput v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->f:I

    .line 44
    iput v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->i:I

    .line 51
    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->j:I

    .line 53
    iput v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->k:I

    .line 55
    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "200"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string/jumbo v2, "500"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "1000"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "5000"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "10000"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->l:[Ljava/lang/String;

    .line 159
    iput v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->p:I

    .line 70
    invoke-direct {p0, p1}, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->a(Landroid/content/Context;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v0, 0x5

    const/4 v3, 0x0

    .line 74
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    iput v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->e:I

    .line 40
    iput v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->f:I

    .line 44
    iput v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->i:I

    .line 51
    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->j:I

    .line 53
    iput v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->k:I

    .line 55
    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "200"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string/jumbo v2, "500"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "1000"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "5000"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "10000"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->l:[Ljava/lang/String;

    .line 159
    iput v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->p:I

    .line 75
    invoke-direct {p0, p1}, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->a(Landroid/content/Context;)V

    .line 77
    return-void
.end method

.method private a()V
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 247
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->l:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 267
    :goto_0
    return-void

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->l:[Ljava/lang/String;

    array-length v9, v0

    .line 251
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->m:[Landroid/text/StaticLayout;

    if-nez v0, :cond_1

    .line 252
    new-array v0, v9, [Landroid/text/StaticLayout;

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->m:[Landroid/text/StaticLayout;

    :cond_1
    move v8, v7

    .line 255
    :goto_1
    if-ge v8, v9, :cond_3

    .line 257
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->l:[Ljava/lang/String;

    aget-object v0, v0, v8

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 258
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->n:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->l:[Ljava/lang/String;

    aget-object v1, v1, v8

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    .line 259
    iget-object v10, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->m:[Landroid/text/StaticLayout;

    new-instance v0, Landroid/text/StaticLayout;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->l:[Ljava/lang/String;

    aget-object v1, v1, v8

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->n:Landroid/text/TextPaint;

    float-to-int v3, v3

    add-int/lit8 v3, v3, 0xa

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    aput-object v0, v10, v8

    .line 262
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->m:[Landroid/text/StaticLayout;

    aget-object v0, v0, v8

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->i:I

    .line 256
    :cond_2
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_1

    .line 265
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "create textLayoutHeight : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 266
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->invalidate()V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "mini_setting_thumbs"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 82
    invoke-virtual {p0, v0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "mini_setting_thumbs_mask"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->b:Landroid/graphics/drawable/Drawable;

    .line 87
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->b:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "mini_setting_split"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->c:Landroid/graphics/drawable/Drawable;

    .line 93
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->c:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 96
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 97
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 99
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 100
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 101
    const/16 v0, 0x1e

    .line 102
    sub-float v2, v1, v4

    const v3, 0x3dcccccd    # 0.1f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 103
    const/16 v0, 0x14

    .line 107
    :cond_0
    :goto_0
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    iput-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->n:Landroid/text/TextPaint;

    .line 108
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->n:Landroid/text/TextPaint;

    const v2, -0x99999a

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 109
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->n:Landroid/text/TextPaint;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 110
    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->a()V

    .line 111
    return-void

    .line 104
    :cond_1
    sub-float/2addr v1, v4

    const v2, 0x3f19999a    # 0.6f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 105
    const/16 v0, 0x1a

    goto :goto_0
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 525
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 527
    iget v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->p:I

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 529
    :goto_0
    iget v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->j:I

    if-ge v0, v3, :cond_2

    .line 530
    iget v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->p:I

    mul-int/2addr v3, v0

    add-int/2addr v3, v2

    if-lt v1, v3, :cond_1

    iget v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->p:I

    iget v4, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->j:I

    add-int/lit8 v4, v4, -0x1

    mul-int/2addr v3, v4

    add-int/2addr v3, v2

    if-ge v1, v3, :cond_1

    .line 532
    iget v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->p:I

    add-int/lit8 v4, v0, 0x1

    mul-int/2addr v3, v4

    iput v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->f:I

    .line 533
    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->k:I

    .line 529
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 537
    :cond_1
    if-ge v1, v2, :cond_0

    .line 538
    const/4 v3, 0x0

    iput v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->f:I

    .line 539
    const/4 v3, 0x0

    iput v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->k:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 554
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    .line 582
    :goto_2
    return-void

    .line 544
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 545
    sget-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->APPID:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->l:[Ljava/lang/String;

    iget v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->k:I

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/alipay/android/app/util/LogAgent;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    :cond_3
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->o:Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar$SelectionChangeListener;

    if-eqz v0, :cond_4

    .line 550
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->o:Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar$SelectionChangeListener;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->l:[Ljava/lang/String;

    iget v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->k:I

    aget-object v1, v1, v2

    invoke-interface {v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar$SelectionChangeListener;->a(Ljava/lang/String;)V

    .line 553
    :cond_4
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->invalidate()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private b()V
    .locals 2

    .prologue
    .line 601
    invoke-super {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 602
    invoke-super {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 604
    :cond_0
    return-void
.end method

.method public static resolveSizeAndStateEx(III)I
    .locals 2

    .prologue
    .line 386
    .line 387
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 388
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 389
    sparse-switch v1, :sswitch_data_0

    .line 404
    :cond_0
    :goto_0
    :sswitch_0
    const/high16 v0, -0x1000000

    and-int/2addr v0, p2

    or-int/2addr v0, p0

    return v0

    .line 394
    :sswitch_1
    if-ge v0, p0, :cond_0

    .line 395
    const/high16 v1, 0x1000000

    or-int p0, v0, v1

    goto :goto_0

    :sswitch_2
    move p0, v0

    .line 401
    goto :goto_0

    .line 389
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public getCurrentSelectedLimit()Ljava/lang/String;
    .locals 2

    .prologue
    .line 512
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->l:[Ljava/lang/String;

    iget v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->k:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getSelection()I
    .locals 1

    .prologue
    .line 508
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->k:I

    return v0
.end method

.method public getTextGroup()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->l:[Ljava/lang/String;

    return-object v0
.end method

.method public isInScrollingContainer()Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 586
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 587
    :goto_0
    if-eqz v1, :cond_1

    instance-of v0, v1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 588
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->shouldDelayChildPressedState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 589
    const/4 v0, 0x1

    .line 593
    :goto_1
    return v0

    .line 591
    :cond_0
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0

    .line 593
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 163
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 165
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    move v0, v1

    .line 169
    :goto_0
    iget v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->j:I

    if-ge v0, v2, :cond_0

    .line 170
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 171
    invoke-super {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    iget v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->p:I

    mul-int/2addr v3, v0

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-super {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 173
    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 177
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 169
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 184
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 185
    invoke-super {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iget v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->e:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->f:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    invoke-super {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 188
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 189
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    move v0, v1

    .line 192
    :goto_1
    iget v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->j:I

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_3

    .line 193
    iget v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->p:I

    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->p:I

    mul-int/2addr v3, v0

    iget-object v4, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    sub-int/2addr v2, v4

    div-int/lit8 v4, v2, 0x4

    move v2, v1

    :goto_2
    const/4 v5, 0x5

    if-ge v2, v5, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-super {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    iget-object v6, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    add-int/2addr v5, v6

    mul-int v6, v2, v4

    add-int/2addr v5, v6

    add-int/2addr v5, v3

    int-to-float v5, v5

    invoke-super {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    iget-object v7, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v5, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 192
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 198
    :cond_3
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->p:I

    const/4 v2, 0x0

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_3
    iget v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->j:I

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->l:[Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->l:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-super {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    mul-int v3, v0, v1

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->m:[Landroid/text/StaticLayout;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-super {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->m:[Landroid/text/StaticLayout;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 200
    :cond_5
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .prologue
    .line 147
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 148
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "MeasuredWidth = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 154
    iget v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->j:I

    add-int/lit8 v1, v1, -0x1

    div-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->p:I

    .line 155
    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->a()V

    .line 156
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->p:I

    iget v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->k:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->f:I

    .line 157
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 115
    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->b:Landroid/graphics/drawable/Drawable;

    .line 118
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->a:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    move v0, v1

    .line 121
    :goto_0
    if-eqz v3, :cond_1

    .line 126
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 127
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 128
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 132
    :goto_1
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->getPaddingLeft()I

    move-result v3

    .line 133
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->getPaddingRight()I

    move-result v4

    .line 134
    add-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 136
    invoke-super {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-super {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 137
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "textLayoutHeight : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->i:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 138
    iget v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->i:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    .line 139
    invoke-static {v2, p1, v1}, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->resolveSizeAndStateEx(III)I

    move-result v2

    invoke-static {v0, p2, v1}, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->resolveSizeAndStateEx(III)I

    move-result v0

    invoke-virtual {p0, v2, v0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->setMeasuredDimension(II)V

    .line 142
    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    move v2, v1

    goto :goto_1
.end method

.method onStartTrackingTouch()V
    .locals 1

    .prologue
    .line 610
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->d:Z

    .line 611
    return-void
.end method

.method onStopTrackingTouch()V
    .locals 1

    .prologue
    .line 618
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->d:Z

    .line 619
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 418
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 480
    :cond_0
    :goto_0
    return v2

    .line 423
    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->setPressed(Z)V

    .line 424
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 425
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->invalidate(Landroid/graphics/Rect;)V

    .line 429
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->onStartTrackingTouch()V

    .line 430
    invoke-direct {p0, p1}, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->a(Landroid/view/MotionEvent;)V

    .line 431
    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->b()V

    goto :goto_0

    .line 436
    :pswitch_1
    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->d:Z

    if-eqz v0, :cond_2

    .line 437
    invoke-direct {p0, p1}, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->a(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 439
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 440
    iget v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->h:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->g:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 441
    invoke-virtual {p0, v2}, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->setPressed(Z)V

    .line 442
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 443
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->invalidate(Landroid/graphics/Rect;)V

    .line 446
    :cond_3
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->onStartTrackingTouch()V

    .line 447
    invoke-direct {p0, p1}, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->a(Landroid/view/MotionEvent;)V

    .line 448
    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->b()V

    goto :goto_0

    .line 454
    :pswitch_2
    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->d:Z

    if-eqz v0, :cond_4

    .line 455
    invoke-direct {p0, p1}, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->a(Landroid/view/MotionEvent;)V

    .line 456
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->onStopTrackingTouch()V

    .line 457
    invoke-virtual {p0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->setPressed(Z)V

    .line 469
    :goto_1
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->invalidate()V

    goto :goto_0

    .line 462
    :cond_4
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->onStartTrackingTouch()V

    .line 463
    invoke-direct {p0, p1}, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->a(Landroid/view/MotionEvent;)V

    .line 464
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->onStopTrackingTouch()V

    goto :goto_1

    .line 473
    :pswitch_3
    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->d:Z

    if-eqz v0, :cond_5

    .line 474
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->onStopTrackingTouch()V

    .line 475
    invoke-virtual {p0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->setPressed(Z)V

    .line 477
    :cond_5
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->invalidate()V

    goto :goto_0

    .line 418
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setOnSelectionChangeListener(Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar$SelectionChangeListener;)V
    .locals 0

    .prologue
    .line 517
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->o:Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar$SelectionChangeListener;

    .line 518
    return-void
.end method

.method public setProgressTexts([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 408
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->l:[Ljava/lang/String;

    .line 409
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->invalidate()V

    .line 410
    return-void
.end method

.method public setSelection(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 497
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->l:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 498
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->l:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 499
    iget v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->p:I

    mul-int/2addr v1, v0

    iput v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->f:I

    .line 500
    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->k:I

    .line 501
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->invalidate()V

    .line 505
    :cond_0
    return-void

    .line 497
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 274
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->a:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_5

    .line 275
    const/4 v0, 0x1

    .line 276
    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 277
    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->a:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 283
    :cond_0
    :goto_0
    if-eqz p1, :cond_2

    .line 284
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 295
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 300
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->requestLayout()V

    .line 303
    :cond_2
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->a:Landroid/graphics/drawable/Drawable;

    .line 304
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->invalidate()V

    .line 305
    if-eqz v0, :cond_4

    .line 306
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->getHeight()I

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    invoke-super {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-super {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sub-int/2addr v0, v3

    iget v5, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->e:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v0, v5

    const/4 v5, 0x0

    int-to-float v0, v0

    mul-float/2addr v0, v5

    float-to-int v0, v0

    add-int/lit8 v4, v4, 0x0

    add-int/2addr v3, v0

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 307
    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 310
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->getDrawableState()[I

    move-result-object v0

    .line 311
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 314
    :cond_4
    return-void

    :cond_5
    move v0, v1

    .line 280
    goto :goto_0
.end method
