.class public Lcom/alipay/mobile/security/gesture/component/AlipayPattern;
.super Landroid/widget/RelativeLayout;


# instance fields
.field public final TAG:Ljava/lang/String;

.field private a:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

.field private b:Lcom/alipay/mobile/security/gesture/component/LockView;

.field private c:Lcom/alipay/mobile/commonui/widget/APTitleBar;

.field private d:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private e:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private f:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private g:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private h:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private final i:I

.field private j:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

.field private k:Lcom/alipay/mobile/commonui/widget/APRoundAngleImageView;

.field private l:Landroid/view/animation/Animation;

.field private m:Landroid/view/animation/Animation;

.field protected mPatternChangeListener:Lcom/alipay/mobile/security/gesture/component/k;

.field protected mPatternCheckedListener:Lcom/alipay/mobile/security/gesture/component/l;

.field private n:Landroid/view/animation/Animation;

.field private o:Landroid/view/animation/Animation;

.field private final p:I

.field private q:Landroid/widget/PopupWindow;

.field private r:Landroid/app/Activity;

.field private s:Z

.field private t:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

.field private u:Lcom/alipay/mobile/commonui/widget/APRoundAngleImageView;

.field private v:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "AlipayPattern"

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->TAG:Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->a:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iput-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->b:Lcom/alipay/mobile/security/gesture/component/LockView;

    iput-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->c:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->g:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/4 v0, 0x5

    iput v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->i:I

    iput-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->l:Landroid/view/animation/Animation;

    iput-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->m:Landroid/view/animation/Animation;

    iput-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->n:Landroid/view/animation/Animation;

    iput-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->o:Landroid/view/animation/Animation;

    const/16 v0, 0xc8

    iput v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->p:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->s:Z

    iput-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->t:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    iput-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->u:Lcom/alipay/mobile/commonui/widget/APRoundAngleImageView;

    new-instance v0, Lcom/alipay/mobile/security/gesture/component/a;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/security/gesture/component/a;-><init>(Lcom/alipay/mobile/security/gesture/component/AlipayPattern;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->v:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string/jumbo v0, "AlipayPattern"

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->TAG:Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->a:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iput-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->b:Lcom/alipay/mobile/security/gesture/component/LockView;

    iput-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->c:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->g:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/4 v0, 0x5

    iput v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->i:I

    iput-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->l:Landroid/view/animation/Animation;

    iput-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->m:Landroid/view/animation/Animation;

    iput-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->n:Landroid/view/animation/Animation;

    iput-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->o:Landroid/view/animation/Animation;

    const/16 v0, 0xc8

    iput v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->p:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->s:Z

    iput-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->t:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    iput-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->u:Lcom/alipay/mobile/commonui/widget/APRoundAngleImageView;

    new-instance v0, Lcom/alipay/mobile/security/gesture/component/a;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/security/gesture/component/a;-><init>(Lcom/alipay/mobile/security/gesture/component/AlipayPattern;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->v:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string/jumbo v0, "AlipayPattern"

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->TAG:Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->a:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iput-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->b:Lcom/alipay/mobile/security/gesture/component/LockView;

    iput-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->c:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->g:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/4 v0, 0x5

    iput v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->i:I

    iput-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->l:Landroid/view/animation/Animation;

    iput-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->m:Landroid/view/animation/Animation;

    iput-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->n:Landroid/view/animation/Animation;

    iput-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->o:Landroid/view/animation/Animation;

    const/16 v0, 0xc8

    iput v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->p:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->s:Z

    iput-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->t:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    iput-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->u:Lcom/alipay/mobile/commonui/widget/APRoundAngleImageView;

    new-instance v0, Lcom/alipay/mobile/security/gesture/component/a;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/security/gesture/component/a;-><init>(Lcom/alipay/mobile/security/gesture/component/AlipayPattern;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->v:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->a()V

    return-void
.end method

.method private static a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)I
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGestureErrorNum()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private a()V
    .locals 3

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AlipayPattern"

    const-string/jumbo v2, "inflate(R.layout.alipay_pattern-->"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/a/e;->a:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget v0, Lcom/alipay/mobile/a/d;->k:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->c:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    sget v0, Lcom/alipay/mobile/a/d;->o:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/gesture/component/LockView;

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->b:Lcom/alipay/mobile/security/gesture/component/LockView;

    sget v0, Lcom/alipay/mobile/a/d;->t:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/a/d;->v:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/a/d;->u:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/a/d;->q:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->g:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/a/d;->f:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->j:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    sget v0, Lcom/alipay/mobile/a/d;->e:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->h:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/a/d;->z:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRoundAngleImageView;

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->u:Lcom/alipay/mobile/commonui/widget/APRoundAngleImageView;

    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/security/gesture/component/AlipayPattern;)Lcom/alipay/mobile/security/gesture/component/LockView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->b:Lcom/alipay/mobile/security/gesture/component/LockView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/alipay/mobile/security/gesture/component/AlipayPattern;)Lcom/alipay/mobile/commonui/widget/APRoundAngleImageView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->u:Lcom/alipay/mobile/commonui/widget/APRoundAngleImageView;

    return-object v0
.end method

.method static synthetic access$10(Lcom/alipay/mobile/security/gesture/component/AlipayPattern;Landroid/view/View;)V
    .locals 5

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x41200000    # 10.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->o:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->o:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/CycleInterpolator;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-direct {v1, v2}, Landroid/view/animation/CycleInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->o:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->o:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "AlipayPattern"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$11(Lcom/alipay/mobile/security/gesture/component/AlipayPattern;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;Lcom/alipay/mobile/security/gesture/ui/GestureActivity;)V
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/a/f;->K:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x5

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    if-gtz v0, :cond_0

    move v0, v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/a/b;->d:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    return-void
.end method

.method static synthetic access$12(Lcom/alipay/mobile/security/gesture/component/AlipayPattern;Landroid/view/View;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->b:Lcom/alipay/mobile/security/gesture/component/LockView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/gesture/component/LockView;->setIsCheckError(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->v:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->v:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "AlipayPattern"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$13(Lcom/alipay/mobile/security/gesture/component/AlipayPattern;)Landroid/widget/PopupWindow;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->q:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$14(Lcom/alipay/mobile/security/gesture/component/AlipayPattern;Landroid/widget/PopupWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->q:Landroid/widget/PopupWindow;

    return-void
.end method

.method static synthetic access$15(Lcom/alipay/mobile/security/gesture/component/AlipayPattern;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->r:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$2(Lcom/alipay/mobile/security/gesture/component/AlipayPattern;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->t:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    return-object v0
.end method

.method static synthetic access$3(Lcom/alipay/mobile/security/gesture/component/AlipayPattern;Lcom/alipay/mobile/framework/app/ui/BaseActivity;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)I
    .locals 1

    invoke-static {p2}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)I

    move-result v0

    return v0
.end method

.method static synthetic access$4(Lcom/alipay/mobile/security/gesture/component/AlipayPattern;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;Lcom/alipay/mobile/security/gesture/ui/GestureActivity;Z)V
    .locals 7

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->mPatternCheckedListener:Lcom/alipay/mobile/security/gesture/component/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->mPatternCheckedListener:Lcom/alipay/mobile/security/gesture/component/l;

    sget-object v1, Lcom/alipay/mobile/security/gesture/component/AlipayPattern$CheckViewEvent;->CHECKERROROVER:Lcom/alipay/mobile/security/gesture/component/AlipayPattern$CheckViewEvent;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/security/gesture/component/l;->a(Lcom/alipay/mobile/security/gesture/component/AlipayPattern$CheckViewEvent;)V

    :cond_0
    instance-of v0, p2, Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    if-eqz v0, :cond_2

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/a/f;->s:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v0, 0x3e8

    invoke-virtual {p0, p2, p1, v0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->settingGestureError(Lcom/alipay/mobile/framework/app/ui/BaseActivity;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;I)V

    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/a/f;->u:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/alipay/mobile/a/f;->W:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/security/gesture/component/f;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/security/gesture/component/f;-><init>(Lcom/alipay/mobile/security/gesture/component/AlipayPattern;)V

    move-object v0, p2

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    :goto_1
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/a/f;->N:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x5

    invoke-virtual {p0, p2, p1, v0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->settingGestureError(Lcom/alipay/mobile/framework/app/ui/BaseActivity;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->mPatternCheckedListener:Lcom/alipay/mobile/security/gesture/component/l;

    sget-object v1, Lcom/alipay/mobile/security/gesture/component/AlipayPattern$CheckViewEvent;->ERROROVERCLICKED:Lcom/alipay/mobile/security/gesture/component/AlipayPattern$CheckViewEvent;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/security/gesture/component/l;->a(Lcom/alipay/mobile/security/gesture/component/AlipayPattern$CheckViewEvent;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->settingGestureError(Lcom/alipay/mobile/framework/app/ui/BaseActivity;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;I)V

    goto :goto_1
.end method

.method static synthetic access$5(Lcom/alipay/mobile/security/gesture/component/AlipayPattern;)Lcom/alipay/mobile/commonui/widget/APRoundAngleImageView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->k:Lcom/alipay/mobile/commonui/widget/APRoundAngleImageView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/alipay/mobile/security/gesture/component/AlipayPattern;Landroid/view/View;)V
    .locals 9

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x42040000    # 33.0f

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/common/misc/ExtViewUtil;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v4

    sub-float v4, v6, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->l:Landroid/view/animation/Animation;

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f333333    # 0.7f

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f333333    # 0.7f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->m:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->l:Landroid/view/animation/Animation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->m:Landroid/view/animation/Animation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->l:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->m:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setFillEnabled(Z)V

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "AlipayPattern"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$7(Lcom/alipay/mobile/security/gesture/component/AlipayPattern;)Lcom/alipay/mobile/commonui/widget/APTextView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    return-object v0
.end method

.method static synthetic access$8(Lcom/alipay/mobile/security/gesture/component/AlipayPattern;Landroid/view/View;)V
    .locals 5

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/common/misc/ExtViewUtil;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->n:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->n:Landroid/view/animation/Animation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->n:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "AlipayPattern"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$9(Lcom/alipay/mobile/security/gesture/component/AlipayPattern;)Lcom/alipay/mobile/commonui/widget/APTextView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    return-object v0
.end method


# virtual methods
.method public checkGestureErrorAlert(Lcom/alipay/mobile/security/gesture/ui/GestureActivity;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V
    .locals 7

    const/4 v5, 0x0

    const/16 v4, 0x3e8

    const/4 v3, 0x5

    invoke-static {p2}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)I

    move-result v0

    if-ge v0, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->mPatternCheckedListener:Lcom/alipay/mobile/security/gesture/component/l;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->mPatternCheckedListener:Lcom/alipay/mobile/security/gesture/component/l;

    sget-object v2, Lcom/alipay/mobile/security/gesture/component/AlipayPattern$CheckViewEvent;->CHECKERROROVER:Lcom/alipay/mobile/security/gesture/component/AlipayPattern$CheckViewEvent;

    invoke-interface {v1, v2}, Lcom/alipay/mobile/security/gesture/component/l;->a(Lcom/alipay/mobile/security/gesture/component/AlipayPattern$CheckViewEvent;)V

    :cond_2
    instance-of v1, p1, Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    if-eqz v1, :cond_0

    if-ne v4, v0, :cond_3

    invoke-virtual {p0, p1, p2, v4}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->settingGestureError(Lcom/alipay/mobile/framework/app/ui/BaseActivity;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;I)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AlipayPattern"

    const-string/jumbo v2, "checkGestureErrorAlert\u6570\u636e\u88ab\u7be1\u6539\uff0ctaobao\u9ed1\u5323\u5b50\u89e3\u5bc6\u6b21\u6570\u5931\u8d25\uff0c\u901a\u77e5gestureActivity\u8df3\u767b\u5f55"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/a/f;->s:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/a/f;->u:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/alipay/mobile/a/f;->W:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/security/gesture/component/i;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/security/gesture/component/i;-><init>(Lcom/alipay/mobile/security/gesture/component/AlipayPattern;)V

    move-object v0, p1

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1, p2, v3}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->settingGestureError(Lcom/alipay/mobile/framework/app/ui/BaseActivity;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;I)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/a/f;->N:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public checkPattern(Lcom/alipay/mobile/security/gesture/ui/GestureActivity;)V
    .locals 10

    const/4 v9, 0x4

    const/high16 v6, 0x43960000    # 300.0f

    const/16 v8, 0x8

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->t:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->t:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Lcom/alipay/mobile/a/d;->s:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget v0, Lcom/alipay/mobile/a/d;->z:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRoundAngleImageView;

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->k:Lcom/alipay/mobile/commonui/widget/APRoundAngleImageView;

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->k:Lcom/alipay/mobile/commonui/widget/APRoundAngleImageView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APRoundAngleImageView;->clearAnimation()V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/a/b;->b:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :try_start_0
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v3, "AlipayPattern"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "display width: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " height: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "density: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/misc/ExtViewUtil;->convertPixelsToDp(FLandroid/content/Context;)F

    move-result v0

    cmpl-float v0, v0, v6

    if-ltz v0, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v1, 0x43960000    # 300.0f

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alipay/mobile/common/misc/ExtViewUtil;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    const v1, 0x440e8000    # 570.0f

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alipay/mobile/common/misc/ExtViewUtil;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v3

    int-to-double v3, v3

    const-wide v5, 0x3fb1eb851eb851ecL    # 0.07

    mul-double/2addr v3, v5

    double-to-int v3, v3

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v4

    if-le v1, v4, :cond_a

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v3, "AlipayPattern"

    const-string/jumbo v4, "small height"

    invoke-interface {v1, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->a:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    if-nez v0, :cond_c

    sget v0, Lcom/alipay/mobile/a/d;->r:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->a:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->t:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "AlipayPattern"

    const-string/jumbo v3, "drawHeadImg"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->u:Lcom/alipay/mobile/commonui/widget/APRoundAngleImageView;

    sget v2, Lcom/alipay/mobile/a/c;->c:I

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APRoundAngleImageView;->setImageResource(I)V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserAvatar()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alipay/mobile/commonbiz/image/ImageWorker;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserAvatar()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/alipay/mobile/security/gesture/component/c;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/security/gesture/component/c;-><init>(Lcom/alipay/mobile/security/gesture/component/AlipayPattern;)V

    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->loadImage(Ljava/lang/String;Lcom/alipay/mobile/commonbiz/image/ImageWorkerCallback;)Lcom/alipay/mobile/commonbiz/image/ImageWorker;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_4
    :goto_3
    const-string/jumbo v0, "convenient"

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->t:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGestureAppearMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->c:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->c:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    new-instance v1, Lcom/alipay/mobile/security/gesture/component/g;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/gesture/component/g;-><init>(Lcom/alipay/mobile/security/gesture/component/AlipayPattern;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setBackButtonListener(Landroid/view/View$OnClickListener;)V

    :goto_4
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->b:Lcom/alipay/mobile/security/gesture/component/LockView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->t:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v8}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    :cond_5
    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "hideaccount"

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/helper/HideUtils;->hide(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/a/b;->a:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v9}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    :cond_6
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v9}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    :cond_7
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->g:Lcom/alipay/mobile/commonui/widget/APTextView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->g:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->g:Lcom/alipay/mobile/commonui/widget/APTextView;

    new-instance v1, Lcom/alipay/mobile/security/gesture/component/d;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/gesture/component/d;-><init>(Lcom/alipay/mobile/security/gesture/component/AlipayPattern;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->h:Lcom/alipay/mobile/commonui/widget/APTextView;

    if-eqz v0, :cond_9

    const-string/jumbo v0, "convenient"

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->t:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGestureAppearMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->j:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v8}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    :cond_9
    :goto_5
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->b:Lcom/alipay/mobile/security/gesture/component/LockView;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/gesture/component/LockView;->clear()V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->b:Lcom/alipay/mobile/security/gesture/component/LockView;

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/security/gesture/component/LockView;->setIsSetGesture(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->b:Lcom/alipay/mobile/security/gesture/component/LockView;

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->t:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGestureOrbitHide()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/gesture/component/LockView;->setIsHideOrbit(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->b:Lcom/alipay/mobile/security/gesture/component/LockView;

    new-instance v1, Lcom/alipay/mobile/security/gesture/component/h;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/security/gesture/component/h;-><init>(Lcom/alipay/mobile/security/gesture/component/AlipayPattern;Lcom/alipay/mobile/security/gesture/ui/GestureActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/gesture/component/LockView;->setOnLockInputListener(Lcom/alipay/mobile/security/gesture/component/t;)V

    goto/16 :goto_0

    :cond_a
    add-int v4, v1, v3

    :try_start_2
    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v5

    if-le v4, v5, :cond_b

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "AlipayPattern"

    const-string/jumbo v5, "medium height"

    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v2

    sub-int v1, v2, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "StackTrace"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_b
    :try_start_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v4, "AlipayPattern"

    const-string/jumbo v5, "big height"

    invoke-interface {v2, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    :cond_c
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->a:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->getVisibility()I

    move-result v0

    if-ne v8, v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->a:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    goto/16 :goto_2

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "AlipayPattern"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_d
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->c:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0, v8}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setVisibility(I)V

    goto/16 :goto_4

    :cond_e
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->j:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->h:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->h:Lcom/alipay/mobile/commonui/widget/APTextView;

    new-instance v1, Lcom/alipay/mobile/security/gesture/component/e;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/gesture/component/e;-><init>(Lcom/alipay/mobile/security/gesture/component/AlipayPattern;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_5
.end method

.method public getAct()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->r:Landroid/app/Activity;

    return-object v0
.end method

.method public getPatternCheckView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->a:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    return-object v0
.end method

.method public getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->t:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    return-object v0
.end method

.method public getmLockView()Lcom/alipay/mobile/security/gesture/component/LockView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->b:Lcom/alipay/mobile/security/gesture/component/LockView;

    return-object v0
.end method

.method l(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public setAct(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->r:Landroid/app/Activity;

    return-void
.end method

.method public setGestureConvenientMode()V
    .locals 3

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    if-nez v0, :cond_1

    const-string/jumbo v0, "setGestureConvenientMode accountService is null"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->l(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->s:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "setGestureConvenientMode"

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->l(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->t:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    const-string/jumbo v2, "convenient"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setGestureAppearMode(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->t:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->updateUserGesture(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)Z

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->t:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/gesture/service/g;->b(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public setIsSetConvenientMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->s:Z

    return-void
.end method

.method public setOnPatternChangeListener(Lcom/alipay/mobile/security/gesture/component/k;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->mPatternChangeListener:Lcom/alipay/mobile/security/gesture/component/k;

    return-void
.end method

.method public setOnPatternCheckedListener(Lcom/alipay/mobile/security/gesture/component/l;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->mPatternCheckedListener:Lcom/alipay/mobile/security/gesture/component/l;

    return-void
.end method

.method public setTopTextView(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/a/b;->d:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public setUserInfo(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->t:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    return-void
.end method

.method public settingGestureError(Lcom/alipay/mobile/framework/app/ui/BaseActivity;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setGestureErrorNum(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->updateUserGesture(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)Z

    return-void
.end method

.method public showPopWindow(Lcom/alipay/mobile/security/gesture/ui/GestureActivity;Z)V
    .locals 12

    const-string/jumbo v0, "showPopWindow"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->l(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->g:Lcom/alipay/mobile/commonui/widget/APTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->q:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->q:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/a/e;->k:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    sget v0, Lcom/alipay/mobile/a/d;->y:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const-class v3, Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/base/config/ConfigService;

    if-eqz v1, :cond_2

    const-string/jumbo v3, "GestureDefaultConvenientAlertMsg"

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    new-instance v0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    const-string/jumbo v1, "MM-1225-4"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setUserCaseID(Ljava/lang/String;)V

    const-string/jumbo v1, "20000006"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setAppID(Ljava/lang/String;)V

    const-string/jumbo v1, "confirm"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSeedID(Ljava/lang/String;)V

    const-string/jumbo v1, "OPEN"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam1(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->openPage(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    move-object v1, v2

    :goto_1
    new-instance v0, Lcom/alipay/mobile/security/gesture/component/j;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/security/gesture/component/j;-><init>(Lcom/alipay/mobile/security/gesture/component/AlipayPattern;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p2, :cond_5

    sget v0, Lcom/alipay/mobile/a/d;->m:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->g:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v3, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v2, v3, :cond_6

    :goto_2
    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    float-to-double v5, v5

    const/4 v7, 0x2

    new-array v7, v7, [I

    iget-object v8, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->g:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v8, v7}, Lcom/alipay/mobile/commonui/widget/APTextView;->getLocationOnScreen([I)V

    const-wide/high16 v8, 0x406e000000000000L    # 240.0

    mul-double/2addr v8, v5

    double-to-int v8, v8

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    const-wide/high16 v9, 0x405e000000000000L    # 120.0

    mul-double/2addr v5, v9

    double-to-int v5, v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v0, v5, v8}, Landroid/widget/LinearLayout;->measure(II)V

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v3, v3, 0x2

    div-int/lit8 v6, v0, 0x2

    sub-int/2addr v3, v6

    const/4 v6, 0x1

    aget v6, v7, v6

    sub-int/2addr v2, v6

    add-int/lit8 v2, v2, 0x14

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "location[0]:"

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    aget v8, v7, v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "location[1]:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v8, 0x1

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->l(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "width0:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v6, "height0:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, "height1:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->l(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "locX:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "locY:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->l(Ljava/lang/String;)V

    new-instance v0, Landroid/widget/PopupWindow;

    const/4 v4, -0x2

    const/4 v5, -0x2

    const/4 v6, 0x1

    invoke-direct {v0, v1, v4, v5, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->q:Landroid/widget/PopupWindow;

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->r:Landroid/app/Activity;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->r:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const v1, 0x3ecccccd    # 0.4f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->r:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->q:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->q:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->q:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->q:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->a:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    const/16 v4, 0x53

    invoke-virtual {v0, v1, v4, v3, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->q:Landroid/widget/PopupWindow;

    new-instance v1, Lcom/alipay/mobile/security/gesture/component/b;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/gesture/component/b;-><init>(Lcom/alipay/mobile/security/gesture/component/AlipayPattern;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/a/e;->m:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_1

    :cond_5
    sget v0, Lcom/alipay/mobile/a/d;->A:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->g:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->getHeight()I

    move-result v2

    new-instance v3, Landroid/widget/PopupWindow;

    const/4 v4, -0x2

    const/4 v5, -0x2

    const/4 v6, 0x1

    invoke-direct {v3, v1, v4, v5, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v3, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->q:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->q:Landroid/widget/PopupWindow;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->q:Landroid/widget/PopupWindow;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->q:Landroid/widget/PopupWindow;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget-object v3, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->g:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v3, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->getLocationOnScreen([I)V

    iget-object v3, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->q:Landroid/widget/PopupWindow;

    iget-object v4, p0, Lcom/alipay/mobile/security/gesture/component/AlipayPattern;->g:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/4 v5, 0x0

    const/4 v6, 0x0

    aget v6, v1, v6

    div-int/lit8 v7, v2, 0x2

    sub-int/2addr v6, v7

    const/4 v7, 0x1

    aget v1, v1, v7

    sub-int/2addr v0, v2

    sub-int v0, v1, v0

    div-int/lit8 v1, v2, 0x2

    add-int/2addr v0, v1

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_0

    :cond_6
    move v11, v3

    move v3, v2

    move v2, v11

    goto/16 :goto_2
.end method
