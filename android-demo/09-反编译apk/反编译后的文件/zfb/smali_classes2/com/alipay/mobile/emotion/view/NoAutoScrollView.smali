.class public Lcom/alipay/mobile/emotion/view/NoAutoScrollView;
.super Lcom/alipay/mobile/commonui/widget/APScrollView;
.source "NoAutoScrollView.java"

# interfaces
.implements Lcom/alipay/mobile/emotion/widget/Interceptable;


# instance fields
.field private intercept_able:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/APScrollView;-><init>(Landroid/content/Context;)V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/emotion/view/NoAutoScrollView;->intercept_able:Z

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/emotion/view/NoAutoScrollView;->intercept_able:Z

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/commonui/widget/APScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/emotion/view/NoAutoScrollView;->intercept_able:Z

    .line 20
    return-void
.end method


# virtual methods
.method protected computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public isIntercept()Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/alipay/mobile/emotion/view/NoAutoScrollView;->intercept_able:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/view/NoAutoScrollView;->isIntercept()Z

    move-result v0

    .line 40
    if-eqz v0, :cond_0

    .line 41
    const/4 v0, 0x0

    .line 43
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/alipay/mobile/commonui/widget/APScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setIntercept(Z)V
    .locals 0

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/alipay/mobile/emotion/view/NoAutoScrollView;->intercept_able:Z

    .line 54
    return-void
.end method
