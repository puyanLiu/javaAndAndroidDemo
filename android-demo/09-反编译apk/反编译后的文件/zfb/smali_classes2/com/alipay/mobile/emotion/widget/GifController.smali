.class public Lcom/alipay/mobile/emotion/widget/GifController;
.super Ljava/lang/Object;
.source "GifController.java"


# static fields
.field public static final LOOP_INFINITE:I


# instance fields
.field private mCurrentLoop:I

.field private mIsAttachedToWindow:Z

.field private mIsAutoPlayAnimation:Z

.field private mIsInPlaying:Z

.field private mIsStop:Z

.field private mListener:Lcom/alipay/mobile/emotion/widget/GifAnimationListener;

.field private mMaxLoop:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/emotion/widget/GifController;->mListener:Lcom/alipay/mobile/emotion/widget/GifAnimationListener;

    .line 15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/emotion/widget/GifController;->mIsAutoPlayAnimation:Z

    .line 16
    iput-boolean v1, p0, Lcom/alipay/mobile/emotion/widget/GifController;->mIsInPlaying:Z

    .line 17
    iput-boolean v1, p0, Lcom/alipay/mobile/emotion/widget/GifController;->mIsAttachedToWindow:Z

    .line 18
    iput-boolean v1, p0, Lcom/alipay/mobile/emotion/widget/GifController;->mIsStop:Z

    .line 19
    iput v1, p0, Lcom/alipay/mobile/emotion/widget/GifController;->mMaxLoop:I

    .line 20
    iput v1, p0, Lcom/alipay/mobile/emotion/widget/GifController;->mCurrentLoop:I

    .line 11
    return-void
.end method


# virtual methods
.method public getCurrentLoop()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/alipay/mobile/emotion/widget/GifController;->mCurrentLoop:I

    return v0
.end method

.method public getMaxLoop()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/alipay/mobile/emotion/widget/GifController;->mMaxLoop:I

    return v0
.end method

.method public isAutoPlayAnimation()Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/alipay/mobile/emotion/widget/GifController;->mIsAutoPlayAnimation:Z

    return v0
.end method

.method public isContinueRunning(Landroid/widget/ImageView;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 135
    if-nez p1, :cond_1

    .line 159
    :cond_0
    :goto_0
    return v0

    .line 139
    :cond_1
    iget-boolean v2, p0, Lcom/alipay/mobile/emotion/widget/GifController;->mIsStop:Z

    if-nez v2, :cond_0

    .line 143
    iget-boolean v2, p0, Lcom/alipay/mobile/emotion/widget/GifController;->mIsAttachedToWindow:Z

    if-eqz v2, :cond_0

    .line 149
    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 153
    iget v2, p0, Lcom/alipay/mobile/emotion/widget/GifController;->mMaxLoop:I

    if-nez v2, :cond_2

    move v0, v1

    .line 154
    goto :goto_0

    .line 156
    :cond_2
    iget v2, p0, Lcom/alipay/mobile/emotion/widget/GifController;->mCurrentLoop:I

    iget v3, p0, Lcom/alipay/mobile/emotion/widget/GifController;->mMaxLoop:I

    if-gt v2, v3, :cond_0

    move v0, v1

    .line 159
    goto :goto_0
.end method

.method public isInPlaying()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/alipay/mobile/emotion/widget/GifController;->mIsInPlaying:Z

    return v0
.end method

.method public onGifAnimationFinished()V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/GifController;->mListener:Lcom/alipay/mobile/emotion/widget/GifAnimationListener;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/GifController;->mListener:Lcom/alipay/mobile/emotion/widget/GifAnimationListener;

    iget v1, p0, Lcom/alipay/mobile/emotion/widget/GifController;->mCurrentLoop:I

    invoke-interface {v0, v1}, Lcom/alipay/mobile/emotion/widget/GifAnimationListener;->onGifAnimationFinished(I)V

    .line 48
    :cond_0
    return-void
.end method

.method public onGifAnimationPreStart()V
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/GifController;->mListener:Lcom/alipay/mobile/emotion/widget/GifAnimationListener;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/GifController;->mListener:Lcom/alipay/mobile/emotion/widget/GifAnimationListener;

    iget v1, p0, Lcom/alipay/mobile/emotion/widget/GifController;->mCurrentLoop:I

    invoke-interface {v0, v1}, Lcom/alipay/mobile/emotion/widget/GifAnimationListener;->onGifAnimationPreStart(I)V

    .line 38
    :cond_0
    return-void
.end method

.method public onGifAnimationTerminate()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/GifController;->mListener:Lcom/alipay/mobile/emotion/widget/GifAnimationListener;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/GifController;->mListener:Lcom/alipay/mobile/emotion/widget/GifAnimationListener;

    invoke-interface {v0}, Lcom/alipay/mobile/emotion/widget/GifAnimationListener;->onGifAnimationTerminate()V

    .line 57
    :cond_0
    return-void
.end method

.method public plusCurrentLoop()V
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/alipay/mobile/emotion/widget/GifController;->mCurrentLoop:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/emotion/widget/GifController;->mCurrentLoop:I

    .line 124
    return-void
.end method

.method public resetCurrentLoop()V
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/emotion/widget/GifController;->mCurrentLoop:I

    .line 128
    return-void
.end method

.method public setAttachedToWindow(Z)V
    .locals 0

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/alipay/mobile/emotion/widget/GifController;->mIsAttachedToWindow:Z

    .line 93
    return-void
.end method

.method public setAutoPlayAnimation(Z)V
    .locals 0

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/alipay/mobile/emotion/widget/GifController;->mIsAutoPlayAnimation:Z

    .line 65
    return-void
.end method

.method public setGifAnimationListener(Lcom/alipay/mobile/emotion/widget/GifAnimationListener;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/alipay/mobile/emotion/widget/GifController;->mListener:Lcom/alipay/mobile/emotion/widget/GifAnimationListener;

    .line 28
    return-void
.end method

.method public setInPlaying(Z)V
    .locals 0

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/alipay/mobile/emotion/widget/GifController;->mIsInPlaying:Z

    .line 78
    return-void
.end method

.method public setMaxLoop(I)V
    .locals 0

    .prologue
    .line 99
    iput p1, p0, Lcom/alipay/mobile/emotion/widget/GifController;->mMaxLoop:I

    .line 100
    return-void
.end method

.method public setStopFlag(Z)V
    .locals 0

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/alipay/mobile/emotion/widget/GifController;->mIsStop:Z

    .line 112
    return-void
.end method
