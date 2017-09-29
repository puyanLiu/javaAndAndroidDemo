.class public Lcom/alipay/mobile/beehive/photo/util/AnimationUtil;
.super Ljava/lang/Object;
.source "AnimationUtil.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private animation:Landroid/view/animation/Animation;

.field private animationEndListener:Lcom/alipay/mobile/beehive/photo/util/AnimationUtil$OnAnimationEndListener;

.field private animationRepeatListener:Lcom/alipay/mobile/beehive/photo/util/AnimationUtil$OnAnimationRepeatListener;

.field private animationStartListener:Lcom/alipay/mobile/beehive/photo/util/AnimationUtil$OnAnimationStartListener;


# direct methods
.method public constructor <init>(FFFF)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .line 34
    invoke-direct {v0, p1, p2, p3, p4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 33
    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/util/AnimationUtil;->animation:Landroid/view/animation/Animation;

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/util/AnimationUtil;->animation:Landroid/view/animation/Animation;

    .line 27
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/util/AnimationUtil;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 28
    return-void
.end method

.method public static startAnimation(ILandroid/view/View;)V
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 63
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/util/AnimationUtil;->animationEndListener:Lcom/alipay/mobile/beehive/photo/util/AnimationUtil$OnAnimationEndListener;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/util/AnimationUtil;->animationEndListener:Lcom/alipay/mobile/beehive/photo/util/AnimationUtil$OnAnimationEndListener;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/beehive/photo/util/AnimationUtil$OnAnimationEndListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 121
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/util/AnimationUtil;->animationRepeatListener:Lcom/alipay/mobile/beehive/photo/util/AnimationUtil$OnAnimationRepeatListener;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/util/AnimationUtil;->animationRepeatListener:Lcom/alipay/mobile/beehive/photo/util/AnimationUtil$OnAnimationRepeatListener;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/beehive/photo/util/AnimationUtil$OnAnimationRepeatListener;->onAnimationRepeat(Landroid/view/animation/Animation;)V

    .line 128
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/util/AnimationUtil;->animationStartListener:Lcom/alipay/mobile/beehive/photo/util/AnimationUtil$OnAnimationStartListener;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/util/AnimationUtil;->animationStartListener:Lcom/alipay/mobile/beehive/photo/util/AnimationUtil$OnAnimationStartListener;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/beehive/photo/util/AnimationUtil$OnAnimationStartListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    .line 114
    :cond_0
    return-void
.end method

.method public setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/util/AnimationUtil;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 107
    return-void
.end method

.method public setDuration(J)Lcom/alipay/mobile/beehive/photo/util/AnimationUtil;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/util/AnimationUtil;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 67
    return-object p0
.end method

.method public setFillAfter(Z)Lcom/alipay/mobile/beehive/photo/util/AnimationUtil;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/util/AnimationUtil;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 72
    return-object p0
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)Lcom/alipay/mobile/beehive/photo/util/AnimationUtil;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/util/AnimationUtil;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 46
    return-object p0
.end method

.method public setLinearInterpolator()Lcom/alipay/mobile/beehive/photo/util/AnimationUtil;
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/util/AnimationUtil;->animation:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 51
    return-object p0
.end method

.method public setOnAnimationEndLinstener(Lcom/alipay/mobile/beehive/photo/util/AnimationUtil$OnAnimationEndListener;)Lcom/alipay/mobile/beehive/photo/util/AnimationUtil;
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/alipay/mobile/beehive/photo/util/AnimationUtil;->animationEndListener:Lcom/alipay/mobile/beehive/photo/util/AnimationUtil$OnAnimationEndListener;

    .line 90
    return-object p0
.end method

.method public setOnAnimationRepeatLinstener(Lcom/alipay/mobile/beehive/photo/util/AnimationUtil$OnAnimationRepeatListener;)Lcom/alipay/mobile/beehive/photo/util/AnimationUtil;
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/alipay/mobile/beehive/photo/util/AnimationUtil;->animationRepeatListener:Lcom/alipay/mobile/beehive/photo/util/AnimationUtil$OnAnimationRepeatListener;

    .line 102
    return-object p0
.end method

.method public setOnAnimationStartLinstener(Lcom/alipay/mobile/beehive/photo/util/AnimationUtil$OnAnimationStartListener;)Lcom/alipay/mobile/beehive/photo/util/AnimationUtil;
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/alipay/mobile/beehive/photo/util/AnimationUtil;->animationStartListener:Lcom/alipay/mobile/beehive/photo/util/AnimationUtil$OnAnimationStartListener;

    .line 96
    return-object p0
.end method

.method public setStartOffSet(J)Lcom/alipay/mobile/beehive/photo/util/AnimationUtil;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/util/AnimationUtil;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 40
    return-object p0
.end method

.method public startAnimation(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/util/AnimationUtil;->animation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 57
    return-void
.end method
