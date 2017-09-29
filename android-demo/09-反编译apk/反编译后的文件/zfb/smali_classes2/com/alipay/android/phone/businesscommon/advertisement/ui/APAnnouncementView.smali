.class public Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;
.super Lcom/alipay/mobile/commonui/widget/APRelativeLayout;
.source "APAnnouncementView.java"


# static fields
.field public static final COLORNORMAL:Ljava/lang/String; = "#fff391"

.field public static final COLORPRESS:Ljava/lang/String; = "#ede17d"

.field public static final STYLE_COUNT_DOWN:I = 0x20

.field public static final STYLE_HIDE_AUTO:I = 0x4

.field public static final STYLE_HIDE_BY_CLICK:I = 0x8

.field public static final STYLE_HIDE_BY_CLICK_CLOSE:I = 0x2

.field public static final STYLE_HIDE_NONE:I = 0x1

.field public static final STYLE_JUMP_ENABLE:I = 0x10


# instance fields
.field private a:Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;

.field private b:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private c:I

.field private d:Lcom/alipay/android/phone/businesscommon/advertisement/ui/f;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:J

.field private h:I

.field private i:Ljava/lang/Runnable;

.field private j:Ljava/lang/Runnable;

.field private k:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 94
    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;-><init>(Landroid/content/Context;)V

    .line 40
    const/4 v0, 0x2

    iput v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->c:I

    .line 43
    iput-boolean v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->f:Z

    .line 57
    iput v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->h:I

    .line 59
    new-instance v0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/a;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/a;-><init>(Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;)V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->i:Ljava/lang/Runnable;

    .line 70
    new-instance v0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/b;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/b;-><init>(Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;)V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->j:Ljava/lang/Runnable;

    .line 85
    new-instance v0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/c;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/c;-><init>(Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;)V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->k:Ljava/lang/Runnable;

    .line 95
    invoke-direct {p0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->a()V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 111
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    const/4 v0, 0x2

    iput v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->c:I

    .line 43
    iput-boolean v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->f:Z

    .line 57
    iput v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->h:I

    .line 59
    new-instance v0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/a;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/a;-><init>(Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;)V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->i:Ljava/lang/Runnable;

    .line 70
    new-instance v0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/b;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/b;-><init>(Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;)V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->j:Ljava/lang/Runnable;

    .line 85
    new-instance v0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/c;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/c;-><init>(Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;)V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->k:Ljava/lang/Runnable;

    .line 112
    invoke-direct {p0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->a()V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 116
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    const/4 v0, 0x2

    iput v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->c:I

    .line 43
    iput-boolean v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->f:Z

    .line 57
    iput v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->h:I

    .line 59
    new-instance v0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/a;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/a;-><init>(Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;)V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->i:Ljava/lang/Runnable;

    .line 70
    new-instance v0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/b;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/b;-><init>(Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;)V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->j:Ljava/lang/Runnable;

    .line 85
    new-instance v0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/c;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/c;-><init>(Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;)V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->k:Ljava/lang/Runnable;

    .line 118
    invoke-direct {p0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->a()V

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 105
    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;-><init>(Landroid/content/Context;)V

    .line 40
    const/4 v0, 0x2

    iput v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->c:I

    .line 43
    iput-boolean v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->f:Z

    .line 57
    iput v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->h:I

    .line 59
    new-instance v0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/a;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/a;-><init>(Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;)V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->i:Ljava/lang/Runnable;

    .line 70
    new-instance v0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/b;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/b;-><init>(Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;)V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->j:Ljava/lang/Runnable;

    .line 85
    new-instance v0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/c;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/c;-><init>(Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;)V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->k:Ljava/lang/Runnable;

    .line 106
    iput-boolean p2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->f:Z

    .line 107
    invoke-direct {p0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->a()V

    .line 108
    return-void
.end method

.method private a()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v6, -0x2

    const v3, 0x4114cccd    # 9.3f

    const v5, 0x4154cccd    # 13.3f

    const/4 v4, 0x1

    .line 159
    new-instance v0, Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;

    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->a:Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->a:Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;->setId(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/alipay/mobile/common/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/alipay/mobile/common/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    new-instance v1, Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/alipay/mobile/common/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setId(I)V

    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/commonui/widget/APTextView;->setFocusable(Z)V

    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/commonui/widget/APTextView;->setFocusableInTouchMode(Z)V

    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setSingleLine()V

    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    const v3, -0x7a800

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v5}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextSize(IF)V

    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->a:Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;

    invoke-virtual {p0, v2, v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p0, v0, v1}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string/jumbo v0, "APAnnouncementView create view finished"

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->c(Ljava/lang/String;)V

    .line 161
    const-string/jumbo v0, "#fff391"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 162
    const-string/jumbo v1, "#ede17d"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 161
    invoke-virtual {p0, v0, v1}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->setBackgroundColor(II)V

    .line 163
    iget-boolean v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->f:Z

    if-eqz v0, :cond_0

    .line 164
    const-string/jumbo v0, "#dadada"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v7, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0, v1, v2}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v7, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0, v1, v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    :cond_0
    return-void
.end method

.method private a(II)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/16 v3, 0x8

    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 285
    invoke-direct {p0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->b()V

    .line 286
    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->setVisibility(I)V

    .line 288
    iput p2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->h:I

    .line 289
    iput p1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->c:I

    .line 290
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->a:Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;->setVisibility(I)V

    .line 292
    new-instance v1, Lcom/alipay/android/phone/businesscommon/advertisement/ui/d;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/d;-><init>(Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;)V

    invoke-virtual {p0, v1}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    and-int/lit8 v1, p1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_0

    .line 304
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->a:Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;->setVisibility(I)V

    .line 305
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->a:Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;

    invoke-virtual {v1, v5}, Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;->setType(I)V

    .line 308
    :cond_0
    and-int/lit8 v1, p1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 309
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->a:Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;->setVisibility(I)V

    .line 310
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->a:Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;->setType(I)V

    .line 311
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->a:Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;

    new-instance v2, Lcom/alipay/android/phone/businesscommon/advertisement/ui/e;

    invoke-direct {v2, p0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/e;-><init>(Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;)V

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 324
    :cond_1
    and-int/lit8 v1, p1, 0x8

    if-ne v1, v3, :cond_2

    .line 325
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->a:Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;->setVisibility(I)V

    .line 326
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->a:Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;

    invoke-virtual {v1, v5}, Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;->setType(I)V

    .line 329
    :cond_2
    and-int/lit8 v1, p1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 330
    if-gez p2, :cond_3

    move p2, v0

    .line 331
    :cond_3
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->i:Ljava/lang/Runnable;

    mul-int/lit16 v2, p2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 343
    :cond_4
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v5}, Lcom/alipay/mobile/commonui/widget/APTextView;->setSelected(Z)V

    .line 344
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 345
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setMarqueeRepeatLimit(I)V

    .line 347
    and-int/lit8 v1, p1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_7

    .line 348
    div-int/lit8 v1, p2, 0x64

    if-lez v1, :cond_8

    .line 349
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->e:Ljava/lang/String;

    const-string/jumbo v2, "#cdtime#"

    .line 350
    const-string/jumbo v3, "%03d"

    .line 349
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->e:Ljava/lang/String;

    .line 358
    :goto_0
    if-lez p2, :cond_7

    .line 359
    iget-wide v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->g:J

    cmp-long v1, v1, v6

    if-gtz v1, :cond_5

    .line 360
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->g:J

    .line 363
    :cond_5
    iget-wide v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->g:J

    cmp-long v1, v1, v6

    if-lez v1, :cond_7

    .line 364
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->g:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    div-int/lit16 v1, v1, 0x3e8

    .line 365
    sub-int v1, p2, v1

    .line 366
    if-gez v1, :cond_6

    move v1, v0

    .line 367
    :cond_6
    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v3, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->e:Ljava/lang/String;

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->j:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 372
    :cond_7
    return-void

    .line 351
    :cond_8
    div-int/lit8 v1, p2, 0xa

    if-lez v1, :cond_9

    .line 352
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->e:Ljava/lang/String;

    const-string/jumbo v2, "#cdtime#"

    .line 353
    const-string/jumbo v3, "%02d"

    .line 352
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->e:Ljava/lang/String;

    goto :goto_0

    .line 355
    :cond_9
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->e:Ljava/lang/String;

    const-string/jumbo v2, "#cdtime#"

    const-string/jumbo v3, "%d"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->e:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;)Lcom/alipay/android/phone/businesscommon/advertisement/ui/f;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->d:Lcom/alipay/android/phone/businesscommon/advertisement/ui/f;

    return-object v0
.end method

.method static synthetic access$1(Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;)J
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->g:J

    return-wide v0
.end method

.method static synthetic access$2(Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;)I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->h:I

    return v0
.end method

.method static synthetic access$3(Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;)Lcom/alipay/mobile/commonui/widget/APTextView;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;)I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->c:I

    return v0
.end method

.method static synthetic access$6(Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;II)V
    .locals 0

    .prologue
    .line 284
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->a(II)V

    return-void
.end method

.method private b()V
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->i:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 251
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->j:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 252
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->k:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 253
    return-void
.end method


# virtual methods
.method protected hideAnnoucement()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 375
    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 376
    if-eqz v0, :cond_0

    .line 377
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 379
    :cond_0
    invoke-virtual {p0, v2}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->setVisibility(I)V

    .line 380
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 244
    invoke-super {p0}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->onDetachedFromWindow()V

    .line 245
    invoke-direct {p0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->b()V

    .line 247
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .prologue
    .line 384
    invoke-super/range {p0 .. p5}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->onLayout(ZIIII)V

    .line 385
    iget v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->c:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 386
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->a:Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;

    sub-int v1, p5, p3

    int-to-float v1, v1

    sub-int v2, p5, p3

    int-to-float v2, v2

    invoke-static {v0, v1, v2}, Lcom/alipay/android/phone/businesscommon/advertisement/c/a;->a(Landroid/view/View;FF)V

    .line 388
    :cond_0
    return-void
.end method

.method public setAnnouncement(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->e:Ljava/lang/String;

    .line 262
    return-void
.end method

.method public setAnnouncementType(III)V
    .locals 3

    .prologue
    const v1, -0x7a800

    .line 265
    invoke-direct {p0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->b()V

    .line 267
    sget v0, Lcom/alipay/mobile/ui/R$drawable;->announcement_bg:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->setBackgroundResource(I)V

    .line 268
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    .line 269
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->a:Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;->setColor(I)V

    .line 270
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->a:Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;->postInvalidate()V

    .line 272
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->setVisibility(I)V

    .line 273
    iput p2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->h:I

    .line 274
    iput p1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->c:I

    .line 275
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->g:J

    .line 277
    if-lez p3, :cond_0

    .line 278
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->k:Ljava/lang/Runnable;

    int-to-long v1, p3

    invoke-virtual {p0, v0, v1, v2}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 282
    :goto_0
    return-void

    .line 280
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->a(II)V

    goto :goto_0
.end method

.method public setBackgroundColor(II)V
    .locals 7

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 123
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 125
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 126
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 128
    new-array v3, v4, [I

    fill-array-data v3, :array_0

    invoke-virtual {v0, v3, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 130
    new-array v3, v4, [I

    fill-array-data v3, :array_1

    invoke-virtual {v0, v3, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 132
    new-array v3, v6, [I

    const v4, 0x101009e

    aput v4, v3, v5

    invoke-virtual {v0, v3, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 134
    new-array v3, v6, [I

    const v4, 0x101009c

    aput v4, v3, v5

    invoke-virtual {v0, v3, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 136
    new-array v2, v5, [I

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 138
    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 139
    return-void

    .line 128
    nop

    :array_0
    .array-data 4
        0x10100a7
        0x101009e
    .end array-data

    .line 130
    :array_1
    .array-data 4
        0x101009e
        0x101009c
    .end array-data
.end method

.method public setBtnColor(I)V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->a:Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;->setColor(I)V

    .line 147
    return-void
.end method

.method public setCallBack(Lcom/alipay/android/phone/businesscommon/advertisement/ui/f;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->d:Lcom/alipay/android/phone/businesscommon/advertisement/ui/f;

    .line 156
    return-void
.end method

.method public setContentEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 257
    return-void
.end method

.method public setHorizontalMargin(FF)V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 231
    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 230
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 232
    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/alipay/mobile/common/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->a:Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;

    .line 236
    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 235
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 237
    if-eqz v0, :cond_1

    .line 238
    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/alipay/mobile/common/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 240
    :cond_1
    return-void
.end method

.method public setHoverTime(I)V
    .locals 0

    .prologue
    .line 391
    iput p1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->h:I

    .line 392
    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    .line 143
    return-void
.end method

.method public setTextEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 151
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 152
    :cond_0
    return-void
.end method

.method public setTextSize(D)V
    .locals 3

    .prologue
    .line 222
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-lez v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/4 v1, 0x2

    double-to-float v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextSize(IF)V

    .line 224
    :cond_0
    return-void
.end method
