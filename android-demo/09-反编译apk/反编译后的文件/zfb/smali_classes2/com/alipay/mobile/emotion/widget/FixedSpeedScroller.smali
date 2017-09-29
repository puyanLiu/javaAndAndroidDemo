.class public Lcom/alipay/mobile/emotion/widget/FixedSpeedScroller;
.super Landroid/widget/Scroller;
.source "FixedSpeedScroller.java"


# instance fields
.field private mDuration:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    .line 9
    const/16 v0, 0x5dc

    iput v0, p0, Lcom/alipay/mobile/emotion/widget/FixedSpeedScroller;->mDuration:I

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 9
    const/16 v0, 0x5dc

    iput v0, p0, Lcom/alipay/mobile/emotion/widget/FixedSpeedScroller;->mDuration:I

    .line 17
    return-void
.end method


# virtual methods
.method public getmDuration()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/alipay/mobile/emotion/widget/FixedSpeedScroller;->mDuration:I

    return v0
.end method

.method public setmDuration(I)V
    .locals 0

    .prologue
    .line 32
    iput p1, p0, Lcom/alipay/mobile/emotion/widget/FixedSpeedScroller;->mDuration:I

    .line 33
    return-void
.end method

.method public startScroll(IIII)V
    .locals 6

    .prologue
    .line 28
    iget v5, p0, Lcom/alipay/mobile/emotion/widget/FixedSpeedScroller;->mDuration:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-super/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 29
    return-void
.end method

.method public startScroll(IIIII)V
    .locals 6

    .prologue
    .line 22
    iget v5, p0, Lcom/alipay/mobile/emotion/widget/FixedSpeedScroller;->mDuration:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-super/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 23
    return-void
.end method
