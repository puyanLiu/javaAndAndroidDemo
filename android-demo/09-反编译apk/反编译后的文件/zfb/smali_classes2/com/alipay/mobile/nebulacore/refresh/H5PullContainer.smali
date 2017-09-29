.class public Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;
.super Landroid/widget/FrameLayout;
.source "H5PullContainer.java"

# interfaces
.implements Lcom/alipay/mobile/nebulacore/refresh/OverScrollListener;


# static fields
.field public static final DEFALUT_DURATION:I = 0x190

.field public static final TAG:Ljava/lang/String; = "H5PullContainer"


# instance fields
.field protected a:Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer$State;

.field protected b:I

.field private c:Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer$Flinger;

.field private d:Lcom/alipay/mobile/nebulacore/refresh/H5PullAdapter;

.field private e:Landroid/view/View;

.field private f:I

.field private g:Z

.field private h:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 20
    sget-object v0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer$State;->STATE_FIT_CONTENT:Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer$State;

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->a:Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer$State;

    .line 22
    new-instance v0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer$Flinger;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer$Flinger;-><init>(Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->c:Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer$Flinger;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    sget-object v0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer$State;->STATE_FIT_CONTENT:Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer$State;

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->a:Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer$State;

    .line 22
    new-instance v0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer$Flinger;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer$Flinger;-><init>(Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->c:Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer$Flinger;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    sget-object v0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer$State;->STATE_FIT_CONTENT:Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer$State;

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->a:Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer$State;

    .line 22
    new-instance v0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer$Flinger;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer$Flinger;-><init>(Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->c:Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer$Flinger;

    .line 46
    return-void
.end method

.method private static a(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 296
    if-eqz p0, :cond_0

    .line 297
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    .line 299
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;)Lcom/alipay/mobile/nebulacore/refresh/H5PullAdapter;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->d:Lcom/alipay/mobile/nebulacore/refresh/H5PullAdapter;

    return-object v0
.end method

.method private a()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 211
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->h:Landroid/view/View;

    if-nez v1, :cond_1

    .line 215
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->h:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(I)Z
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->e:Landroid/view/View;

    if-nez v0, :cond_0

    .line 175
    const/4 v0, 0x0

    .line 207
    :goto_0
    return v0

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->a:Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer$State;

    sget-object v1, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer$State;->STATE_FIT_EXTRAS:Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer$State;

    if-eq v0, v1, :cond_1

    .line 179
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    add-int/2addr v0, p1

    .line 180
    if-gtz v0, :cond_3

    .line 181
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    neg-int p1, v0

    .line 200
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->e:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 202
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 203
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->h:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 206
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->invalidate()V

    .line 207
    const/4 v0, 0x1

    goto :goto_0

    .line 182
    :cond_3
    iget v1, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->b:I

    if-gt v0, v1, :cond_6

    .line 183
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->a:Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer$State;

    sget-object v1, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer$State;->STATE_OVER:Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer$State;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->a:Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer$State;

    sget-object v1, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer$State;->STATE_FIT_CONTENT:Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer$State;

    if-ne v0, v1, :cond_1

    .line 184
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->c:Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer$Flinger;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer$Flinger;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->d:Lcom/alipay/mobile/nebulacore/refresh/H5PullAdapter;

    if-eqz v0, :cond_5

    .line 186
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->d:Lcom/alipay/mobile/nebulacore/refresh/H5PullAdapter;

    invoke-interface {v0}, Lcom/alipay/mobile/nebulacore/refresh/H5PullAdapter;->onOpen()V

    .line 188
    :cond_5
    sget-object v0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer$State;->STATE_OPEN:Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer$State;

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->a:Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer$State;

    goto :goto_1

    .line 190
    :cond_6
    iget v1, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->b:I

    if-le v0, v1, :cond_1

    .line 191
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->a:Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer$State;

    sget-object v1, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer$State;->STATE_OPEN:Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer$State;

    if-ne v0, v1, :cond_1

    .line 192
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->d:Lcom/alipay/mobile/nebulacore/refresh/H5PullAdapter;

    if-eqz v0, :cond_7

    .line 193
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->d:Lcom/alipay/mobile/nebulacore/refresh/H5PullAdapter;

    invoke-interface {v0}, Lcom/alipay/mobile/nebulacore/refresh/H5PullAdapter;->onOver()V

    .line 195
    :cond_7
    sget-object v0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer$State;->STATE_OVER:Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer$State;

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->a:Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer$State;

    goto :goto_1
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;I)Z
    .locals 1

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->a(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 50
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->d:Lcom/alipay/mobile/nebulacore/refresh/H5PullAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->d:Lcom/alipay/mobile/nebulacore/refresh/H5PullAdapter;

    invoke-interface {v0}, Lcom/alipay/mobile/nebulacore/refresh/H5PullAdapter;->canPull()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->e:Landroid/view/View;

    if-eqz v0, :cond_4

    move v0, v1

    :goto_0
    if-eqz v0, :cond_a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    if-eq v3, v1, :cond_5

    const/4 v0, 0x3

    if-eq v3, v0, :cond_5

    move v0, v2

    :goto_1
    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->g:Z

    :cond_1
    if-lez v4, :cond_9

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->a:Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer$State;

    sget-object v3, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer$State;->STATE_OVER:Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer$State;

    if-ne v0, v3, :cond_6

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->a:Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer$State;

    sget-object v3, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer$State;->STATE_FIT_EXTRAS:Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer$State;

    if-eq v0, v3, :cond_3

    sget-object v0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer$State;->STATE_FIT_EXTRAS:Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer$State;

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->a:Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer$State;

    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget v3, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->b:I

    sub-int/2addr v0, v3

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->c:Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer$Flinger;

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer$Flinger;->recover(I)V

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->d:Lcom/alipay/mobile/nebulacore/refresh/H5PullAdapter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->d:Lcom/alipay/mobile/nebulacore/refresh/H5PullAdapter;

    invoke-interface {v0}, Lcom/alipay/mobile/nebulacore/refresh/H5PullAdapter;->onLoading()V

    :cond_3
    :goto_2
    move v0, v2

    :goto_3
    if-nez v0, :cond_b

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_b

    :goto_4
    return v2

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->a:Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer$State;

    sget-object v3, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer$State;->STATE_FIT_EXTRAS:Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer$State;

    if-ne v0, v3, :cond_7

    iget v0, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->b:I

    if-le v4, v0, :cond_3

    iget v0, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->b:I

    sub-int v0, v4, v0

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->c:Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer$Flinger;

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer$Flinger;->recover(I)V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->a:Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer$State;

    sget-object v0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer$State;->STATE_OPEN:Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer$State;

    :cond_8
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->c:Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer$Flinger;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer$Flinger;->recover(I)V

    goto :goto_2

    :cond_9
    const/4 v0, 0x2

    if-ne v3, v0, :cond_a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v3, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->f:I

    int-to-float v3, v3

    sub-float/2addr v0, v3

    float-to-int v0, v0

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->e:Landroid/view/View;

    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->a(Landroid/view/View;)I

    move-result v3

    div-int/lit8 v0, v0, 0x2

    iget-boolean v4, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->g:Z

    if-eqz v4, :cond_c

    if-gtz v3, :cond_c

    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->a(I)Z

    move v0, v1

    :goto_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->f:I

    goto :goto_3

    :cond_a
    move v0, v2

    goto :goto_3

    :cond_b
    move v2, v1

    goto :goto_4

    :cond_c
    move v0, v2

    goto :goto_5
.end method

.method public fitContent()V
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->a:Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer$State;

    sget-object v1, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer$State;->STATE_FIT_EXTRAS:Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer$State;

    if-eq v0, v1, :cond_1

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 255
    if-lez v0, :cond_2

    .line 256
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->c:Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer$Flinger;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer$Flinger;->recover(I)V

    .line 258
    :cond_2
    sget-object v0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer$State;->STATE_FIT_CONTENT:Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer$State;

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->a:Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer$State;

    goto :goto_0
.end method

.method public isBackToTop()Z
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 263
    if-lez v0, :cond_0

    .line 264
    const/4 v0, 0x0

    .line 266
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public notifyViewChanged()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 303
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->h:Landroid/view/View;

    if-nez v0, :cond_1

    .line 304
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "content view not added yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->d:Lcom/alipay/mobile/nebulacore/refresh/H5PullAdapter;

    invoke-interface {v0}, Lcom/alipay/mobile/nebulacore/refresh/H5PullAdapter;->getHeaderView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->h:Landroid/view/View;

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->h:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->h:Landroid/view/View;

    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->b:I

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    iget v3, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->b:I

    invoke-direct {v0, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->h:Landroid/view/View;

    invoke-virtual {p0, v2, v1, v0}, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 307
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->h:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 308
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->d:Lcom/alipay/mobile/nebulacore/refresh/H5PullAdapter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->d:Lcom/alipay/mobile/nebulacore/refresh/H5PullAdapter;

    invoke-interface {v0}, Lcom/alipay/mobile/nebulacore/refresh/H5PullAdapter;->canRefresh()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_4

    .line 309
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->h:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 314
    :cond_2
    :goto_1
    return-void

    :cond_3
    move v0, v1

    .line 308
    goto :goto_0

    .line 311
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 158
    .line 160
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->e:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 162
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->e:Landroid/view/View;

    .line 163
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->e:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v0

    .line 162
    invoke-virtual {v2, v1, v0, p4, v3}, Landroid/view/View;->layout(IIII)V

    .line 166
    :goto_0
    iget v2, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->b:I

    sub-int/2addr v0, v2

    .line 167
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 168
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->h:Landroid/view/View;

    iget v3, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->b:I

    add-int/2addr v3, v0

    invoke-virtual {v2, v1, v0, p4, v3}, Landroid/view/View;->layout(IIII)V

    .line 171
    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public onOverScrolled(IIII)V
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->e:Landroid/view/View;

    if-nez v0, :cond_1

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->e:Landroid/view/View;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->a(Landroid/view/View;)I

    move-result v0

    if-gtz v0, :cond_0

    if-gez p2, :cond_0

    if-gtz p4, :cond_0

    .line 288
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->g:Z

    goto :goto_0
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 235
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->e:Landroid/view/View;

    .line 236
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->e:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->addView(Landroid/view/View;I)V

    .line 237
    return-void
.end method

.method public setPullAdapter(Lcom/alipay/mobile/nebulacore/refresh/H5PullAdapter;)V
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->h:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->h:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->removeView(Landroid/view/View;)V

    .line 274
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->h:Landroid/view/View;

    .line 276
    :cond_0
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/refresh/H5PullContainer;->d:Lcom/alipay/mobile/nebulacore/refresh/H5PullAdapter;

    .line 279
    return-void
.end method

.method public setPullableView(Lcom/alipay/mobile/nebulacore/refresh/H5PullableView;)V
    .locals 0

    .prologue
    .line 240
    if-eqz p1, :cond_0

    .line 241
    invoke-interface {p1, p0}, Lcom/alipay/mobile/nebulacore/refresh/H5PullableView;->setOverScrollListener(Lcom/alipay/mobile/nebulacore/refresh/OverScrollListener;)V

    .line 243
    :cond_0
    return-void
.end method
