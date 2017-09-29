.class public Lcom/flybird/FBScrollView;
.super Landroid/widget/ScrollView;
.source "FBScrollView.java"


# instance fields
.field private a:Landroid/widget/FrameLayout;

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flybird/FBScrollView;->b:Z

    .line 17
    iput-object p2, p0, Lcom/flybird/FBScrollView;->a:Landroid/widget/FrameLayout;

    .line 18
    iget-object v0, p0, Lcom/flybird/FBScrollView;->a:Landroid/widget/FrameLayout;

    invoke-super {p0, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 19
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/flybird/FBScrollView;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 23
    return-void
.end method

.method public getContainer()Landroid/view/View;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/flybird/FBScrollView;->a:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getFbChildAt(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/flybird/FBScrollView;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getFbChildCount()I
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/flybird/FBScrollView;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/flybird/FBScrollView;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 44
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onSizeChanged(IIII)V

    .line 54
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/flybird/FBScrollView;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 27
    return-void
.end method

.method public setScrollable(Z)V
    .locals 0

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/flybird/FBScrollView;->b:Z

    .line 49
    return-void
.end method
