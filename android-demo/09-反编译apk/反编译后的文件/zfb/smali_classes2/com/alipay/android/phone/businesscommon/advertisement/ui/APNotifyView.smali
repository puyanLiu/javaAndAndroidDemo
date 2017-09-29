.class public Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;
.super Lcom/alipay/mobile/commonui/widget/APFrameLayout;
.source "APNotifyView.java"


# static fields
.field public static final COLORNORMAL:Ljava/lang/String; = "#801b1b11"

.field public static final DEFAULT_NOTIFY_SPACECODE:Ljava/lang/String; = "CDP_NOTIFY"


# instance fields
.field private a:Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;

.field private b:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private c:Lcom/alipay/mobile/commonui/widget/APImageView;

.field private d:Lcom/alipay/android/phone/businesscommon/advertisement/ui/f;

.field private e:Landroid/view/animation/ScaleAnimation;

.field private f:Landroid/view/animation/ScaleAnimation;

.field private g:I

.field private h:I

.field private i:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;-><init>(Landroid/content/Context;)V

    .line 202
    new-instance v0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/g;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/g;-><init>(Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;)V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;->i:Ljava/lang/Runnable;

    .line 49
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;->a(Landroid/content/Context;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 202
    new-instance v0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/g;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/g;-><init>(Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;)V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;->i:Ljava/lang/Runnable;

    .line 54
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;->a(Landroid/content/Context;)V

    .line 55
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 7

    .prologue
    const/high16 v6, 0x42000000    # 32.0f

    const/high16 v2, 0x41900000    # 18.0f

    const/high16 v3, 0x41000000    # 8.0f

    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 58
    new-instance v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/commonui/widget/APImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;->c:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 59
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {p1, v2}, Lcom/alipay/mobile/common/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    .line 60
    invoke-static {p1, v2}, Lcom/alipay/mobile/common/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    .line 59
    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 61
    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {p1, v1}, Lcom/alipay/mobile/common/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 62
    const/16 v1, 0x13

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 63
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;->c:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v2, Lcom/alipay/mobile/ui/R$drawable;->default_notice_icon:I

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    .line 64
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;->c:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {p0, v1, v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    new-instance v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/commonui/widget/APTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 67
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 68
    const/high16 v1, 0x42280000    # 42.0f

    invoke-static {p1, v1}, Lcom/alipay/mobile/common/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 69
    invoke-static {p1, v6}, Lcom/alipay/mobile/common/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 70
    const/16 v1, 0x13

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 71
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    const-string/jumbo v2, "#ffffff"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    .line 72
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextSize(F)V

    .line 73
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setSingleLine(Z)V

    .line 74
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 75
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p0, v1, v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 78
    new-instance v1, Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;

    invoke-direct {v1, p1}, Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;->a:Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;

    .line 79
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {p1, v3}, Lcom/alipay/mobile/common/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    .line 80
    invoke-static {p1, v3}, Lcom/alipay/mobile/common/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v3

    .line 79
    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 81
    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 82
    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;->a:Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;->setColor(I)V

    .line 83
    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;->a:Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;

    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {p1, v6}, Lcom/alipay/mobile/common/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 85
    const/16 v2, 0x15

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 86
    invoke-virtual {p0, v0, v1}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;->a:Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/alipay/android/phone/businesscommon/advertisement/ui/h;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/h;-><init>(Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    new-instance v0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/i;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/i;-><init>(Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;)V

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    invoke-direct {v0, v4, v4, v5, v4}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;->e:Landroid/view/animation/ScaleAnimation;

    .line 108
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;->e:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 109
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    invoke-direct {v0, v4, v4, v4, v5}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;->f:Landroid/view/animation/ScaleAnimation;

    .line 110
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;->f:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 111
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;->f:Landroid/view/animation/ScaleAnimation;

    new-instance v1, Lcom/alipay/android/phone/businesscommon/advertisement/ui/j;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/j;-><init>(Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 129
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;)Landroid/view/animation/ScaleAnimation;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;->f:Landroid/view/animation/ScaleAnimation;

    return-object v0
.end method

.method static synthetic access$1(Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;)Lcom/alipay/android/phone/businesscommon/advertisement/ui/f;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;->d:Lcom/alipay/android/phone/businesscommon/advertisement/ui/f;

    return-object v0
.end method


# virtual methods
.method public checkHasMoreNotify()V
    .locals 5

    .prologue
    .line 133
    const-class v0, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/b;->c(Ljava/lang/Class;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;

    .line 134
    const-string/jumbo v1, "CDP_NOTIFY"

    const/4 v2, 0x0

    .line 135
    const/4 v3, 0x0

    new-instance v4, Lcom/alipay/android/phone/businesscommon/advertisement/ui/k;

    invoke-direct {v4, p0, v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/k;-><init>(Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;)V

    .line 134
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;->getSpaceInfoByCode(Ljava/lang/String;Ljava/util/Map;ZLcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSingleSpaceInfoCallBack;)V

    .line 161
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 165
    invoke-super {p0}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;->onAttachedToWindow()V

    .line 166
    iget v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;->g:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 167
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;->i:Ljava/lang/Runnable;

    iget v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;->h:I

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    mul-int/lit16 v0, v0, 0x3e8

    add-int/lit16 v0, v0, -0x1f4

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;->e:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 170
    return-void

    .line 167
    :cond_1
    iget v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;->h:I

    goto :goto_0
.end method

.method public setBackgroundColor(II)V
    .locals 7

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 226
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 228
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 229
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 231
    new-array v3, v4, [I

    fill-array-data v3, :array_0

    invoke-virtual {v0, v3, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 234
    new-array v3, v4, [I

    fill-array-data v3, :array_1

    invoke-virtual {v0, v3, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 237
    new-array v3, v6, [I

    .line 238
    const v4, 0x101009e

    aput v4, v3, v5

    .line 237
    invoke-virtual {v0, v3, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 240
    new-array v3, v6, [I

    .line 241
    const v4, 0x101009c

    aput v4, v3, v5

    .line 240
    invoke-virtual {v0, v3, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 243
    new-array v2, v5, [I

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 245
    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 246
    return-void

    .line 231
    nop

    :array_0
    .array-data 4
        0x10100a7
        0x101009e
    .end array-data

    .line 234
    :array_1
    .array-data 4
        0x101009e
        0x101009c
    .end array-data
.end method

.method public setCallBack(Lcom/alipay/android/phone/businesscommon/advertisement/ui/f;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;->d:Lcom/alipay/android/phone/businesscommon/advertisement/ui/f;

    .line 220
    return-void
.end method

.method public setColseBtnVisable(Z)V
    .locals 2

    .prologue
    .line 185
    if-eqz p1, :cond_0

    .line 186
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;->a:Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;->setVisibility(I)V

    .line 190
    :goto_0
    return-void

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;->a:Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    return-void
.end method

.method public setContentColor(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    .line 178
    return-void
.end method

.method public setIcon(I)V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;->c:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    .line 200
    return-void
.end method

.method public setRightIconColor(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;->a:Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;->setColor(I)V

    .line 182
    return-void
.end method

.method public setType(II)V
    .locals 2

    .prologue
    .line 193
    and-int/lit8 v0, p1, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;->setColseBtnVisable(Z)V

    .line 194
    iput p1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;->g:I

    .line 195
    iput p2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;->h:I

    .line 196
    return-void

    .line 193
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
