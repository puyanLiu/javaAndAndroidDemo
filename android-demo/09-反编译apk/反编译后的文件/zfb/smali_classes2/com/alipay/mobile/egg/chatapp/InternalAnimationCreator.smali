.class public Lcom/alipay/mobile/egg/chatapp/InternalAnimationCreator;
.super Lcom/alipay/mobile/egg/displayer/AnimationCreator;
.source "InternalAnimationCreator.java"


# instance fields
.field private DEFAULT_DURATION:I

.field private mBottomReferenceView:Landroid/view/View;

.field private mRandom:Ljava/util/Random;

.field private mScale:F

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mTopReferenceView:Landroid/view/View;


# direct methods
.method public constructor <init>(IILjava/util/Random;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Lcom/alipay/mobile/egg/displayer/AnimationCreator;-><init>()V

    .line 15
    const/16 v0, 0x9c4

    iput v0, p0, Lcom/alipay/mobile/egg/chatapp/InternalAnimationCreator;->DEFAULT_DURATION:I

    .line 17
    iput v1, p0, Lcom/alipay/mobile/egg/chatapp/InternalAnimationCreator;->mScreenWidth:I

    .line 19
    iput v1, p0, Lcom/alipay/mobile/egg/chatapp/InternalAnimationCreator;->mScreenHeight:I

    .line 23
    iput-object v2, p0, Lcom/alipay/mobile/egg/chatapp/InternalAnimationCreator;->mTopReferenceView:Landroid/view/View;

    .line 25
    iput-object v2, p0, Lcom/alipay/mobile/egg/chatapp/InternalAnimationCreator;->mBottomReferenceView:Landroid/view/View;

    .line 27
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/alipay/mobile/egg/chatapp/InternalAnimationCreator;->mScale:F

    .line 32
    iput p1, p0, Lcom/alipay/mobile/egg/chatapp/InternalAnimationCreator;->mScreenWidth:I

    .line 33
    iput p2, p0, Lcom/alipay/mobile/egg/chatapp/InternalAnimationCreator;->mScreenHeight:I

    .line 34
    iput-object p3, p0, Lcom/alipay/mobile/egg/chatapp/InternalAnimationCreator;->mRandom:Ljava/util/Random;

    .line 35
    return-void
.end method


# virtual methods
.method protected createBottomToTopAnimation(IILcom/alipay/mobile/egg/EggEffect;)Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method protected createLeftToRightAnimation(IILcom/alipay/mobile/egg/EggEffect;)Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    return-object v0
.end method

.method protected createRightToLeftAnimation(IILcom/alipay/mobile/egg/EggEffect;)Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    return-object v0
.end method

.method protected createTopToBottomAnimation(IILcom/alipay/mobile/egg/EggEffect;)Landroid/view/animation/Animation;
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-virtual {p3}, Lcom/alipay/mobile/egg/EggEffect;->getDuration()I

    move-result v0

    .line 47
    if-gtz v0, :cond_1

    .line 48
    iget v0, p0, Lcom/alipay/mobile/egg/chatapp/InternalAnimationCreator;->DEFAULT_DURATION:I

    move v9, v0

    .line 51
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/egg/chatapp/InternalAnimationCreator;->mRandom:Ljava/util/Random;

    iget v2, p0, Lcom/alipay/mobile/egg/chatapp/InternalAnimationCreator;->mScreenWidth:I

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    .line 52
    mul-int/lit8 v5, p2, -0x4

    .line 53
    add-int/lit8 v0, v10, 0xa

    add-int/2addr v0, p1

    iget v2, p0, Lcom/alipay/mobile/egg/chatapp/InternalAnimationCreator;->mScreenWidth:I

    .line 54
    iget-object v3, p0, Lcom/alipay/mobile/egg/chatapp/InternalAnimationCreator;->mRandom:Ljava/util/Random;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    div-int/2addr v2, v3

    .line 53
    add-int/2addr v0, v2

    .line 55
    iget-object v2, p0, Lcom/alipay/mobile/egg/chatapp/InternalAnimationCreator;->mRandom:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextBoolean()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 57
    neg-int v0, v0

    move v3, v0

    .line 60
    :goto_1
    iget v7, p0, Lcom/alipay/mobile/egg/chatapp/InternalAnimationCreator;->mScreenHeight:I

    .line 71
    new-instance v0, Lcom/alipay/mobile/egg/displayer/ArcTranslateAnimation;

    int-to-float v2, v10

    .line 72
    int-to-float v4, v3

    int-to-float v6, v5

    .line 73
    int-to-float v8, v7

    move v3, v1

    move v5, v1

    move v7, v1

    .line 71
    invoke-direct/range {v0 .. v8}, Lcom/alipay/mobile/egg/displayer/ArcTranslateAnimation;-><init>(IFIFIFIF)V

    .line 74
    iget-object v2, p0, Lcom/alipay/mobile/egg/chatapp/InternalAnimationCreator;->mRandom:Ljava/util/Random;

    invoke-virtual {v2, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/2addr v2, v9

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 75
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 76
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 77
    invoke-virtual {v0, v10, v1, v1, v1}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 79
    return-object v0

    :cond_0
    move v3, v0

    goto :goto_1

    :cond_1
    move v9, v0

    goto :goto_0
.end method

.method public setReferenceView(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/alipay/mobile/egg/chatapp/InternalAnimationCreator;->mTopReferenceView:Landroid/view/View;

    .line 111
    iput-object p2, p0, Lcom/alipay/mobile/egg/chatapp/InternalAnimationCreator;->mBottomReferenceView:Landroid/view/View;

    .line 112
    return-void
.end method
