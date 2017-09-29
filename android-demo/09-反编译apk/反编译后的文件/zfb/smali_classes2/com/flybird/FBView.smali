.class public Lcom/flybird/FBView;
.super Ljava/lang/Object;
.source "FBView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/alipay/android/app/template/ITemplateDisposable;


# instance fields
.field private a:[Ljava/lang/String;

.field private b:I

.field protected c:I

.field protected d:I

.field protected e:Lcom/flybird/FBDocument;

.field protected f:Z

.field protected g:Z

.field protected h:Z

.field protected i:Z

.field j:Landroid/widget/FrameLayout$LayoutParams;

.field private k:F

.field private l:F

.field private m:[F

.field public mNode:J

.field public mTag:Ljava/lang/String;

.field public mView:Landroid/view/View;

.field private n:Z

.field private o:Z

.field private p:J

.field private q:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/flybird/FBDocument;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/flybird/FBView;->a:[Ljava/lang/String;

    .line 32
    iput v1, p0, Lcom/flybird/FBView;->c:I

    .line 33
    iput v1, p0, Lcom/flybird/FBView;->d:I

    .line 34
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/flybird/FBView;->m:[F

    .line 37
    iput-boolean v1, p0, Lcom/flybird/FBView;->f:Z

    .line 38
    iput-boolean v1, p0, Lcom/flybird/FBView;->g:Z

    .line 43
    iput-boolean v1, p0, Lcom/flybird/FBView;->n:Z

    .line 45
    iput-boolean v1, p0, Lcom/flybird/FBView;->h:Z

    .line 47
    iput-boolean v1, p0, Lcom/flybird/FBView;->i:Z

    .line 49
    iput-boolean v1, p0, Lcom/flybird/FBView;->o:Z

    .line 71
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/flybird/FBView;->j:Landroid/widget/FrameLayout$LayoutParams;

    .line 75
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/flybird/FBView;->q:F

    .line 78
    if-nez p2, :cond_0

    .line 79
    new-instance p2, Lcom/flybird/FBFrameLayout;

    invoke-direct {p2, p1}, Lcom/flybird/FBFrameLayout;-><init>(Landroid/content/Context;)V

    .line 80
    :cond_0
    iput-object p2, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    .line 85
    const-string/jumbo v0, "alipay_msp_view_wrapper"

    const-string/jumbo v1, "id"

    .line 86
    const-string/jumbo v2, "com.alipay.android.app.template"

    .line 85
    invoke-static {p1, v0, v1, v2}, Lcom/alipay/android/app/template/ResUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 87
    iget-object v1, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    invoke-virtual {v1, v0, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 88
    iput-object p3, p0, Lcom/flybird/FBView;->e:Lcom/flybird/FBDocument;

    .line 89
    iget-object v0, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/flybird/FBView;->j:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    return-void
.end method

.method private a(Z)V
    .locals 6

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 157
    iget-object v0, p0, Lcom/flybird/FBView;->e:Lcom/flybird/FBDocument;

    invoke-virtual {v0}, Lcom/flybird/FBDocument;->isOnloadFinish()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_2

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/flybird/FBView;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/flybird/FBView;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/flybird/FBView;->a:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    if-eqz v0, :cond_3

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    iget v1, p0, Lcom/flybird/FBView;->k:F

    iget v2, p0, Lcom/flybird/FBView;->b:I

    iget v3, p0, Lcom/flybird/FBView;->l:F

    .line 160
    iget-object v4, p0, Lcom/flybird/FBView;->a:[Ljava/lang/String;

    .line 159
    invoke-static {v1, v2, v3, v4, v5}, Lcom/flybird/FBTools;->generateBackGroundDrawable(FIF[Ljava/lang/String;F)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 166
    :cond_2
    :goto_0
    return-void

    .line 162
    :cond_3
    iget-object v0, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    .line 163
    iget v1, p0, Lcom/flybird/FBView;->k:F

    iget v2, p0, Lcom/flybird/FBView;->b:I

    iget v3, p0, Lcom/flybird/FBView;->l:F

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/flybird/FBTools;->generateBackGroundDrawable(FIF[Ljava/lang/String;F)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 162
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public static dispatchOnLongClickEvent(ZZLandroid/view/View;Lcom/flybird/FBView;Landroid/view/View$OnLongClickListener;I)V
    .locals 8

    .prologue
    .line 394
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 440
    :cond_0
    return-void

    .line 403
    :cond_1
    if-nez p1, :cond_3

    if-eqz p0, :cond_3

    invoke-virtual {p3}, Lcom/flybird/FBView;->needHandleLongClick()Z

    move-result v0

    if-nez v0, :cond_3

    .line 404
    invoke-virtual {p2, p4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 405
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Lcom/flybird/FBView;->needHandleLongClick(Z)V

    move-object v4, p4

    .line 410
    :goto_0
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 414
    check-cast p2, Landroid/view/ViewGroup;

    .line 416
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    .line 417
    if-eqz v7, :cond_0

    .line 421
    const/4 v0, 0x0

    move v6, v0

    :goto_1
    if-ge v6, v7, :cond_0

    .line 422
    instance-of v0, p2, Lcom/flybird/FBScrollView;

    if-eqz v0, :cond_4

    move-object v0, p2

    .line 424
    check-cast v0, Lcom/flybird/FBScrollView;

    .line 425
    invoke-virtual {v0, v6}, Lcom/flybird/FBScrollView;->getFbChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 429
    :goto_2
    if-eqz v2, :cond_2

    .line 430
    invoke-virtual {v2, p5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/flybird/FBView;

    .line 433
    if-nez v3, :cond_5

    .line 434
    const-string/jumbo v0, "FBView"

    const-string/jumbo v1, "fatal error"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    :cond_2
    :goto_3
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1

    .line 406
    :cond_3
    invoke-virtual {p3}, Lcom/flybird/FBView;->needHandleLongClick()Z

    move-result v0

    if-eqz v0, :cond_6

    move-object v4, p3

    .line 407
    goto :goto_0

    .line 427
    :cond_4
    invoke-virtual {p2, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    goto :goto_2

    .line 437
    :cond_5
    invoke-virtual {p3}, Lcom/flybird/FBView;->needHandleLongClick()Z

    move-result v0

    invoke-virtual {p3}, Lcom/flybird/FBView;->needHandleClick()Z

    move-result v1

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/flybird/FBView;->dispatchOnLongClickEvent(ZZLandroid/view/View;Lcom/flybird/FBView;Landroid/view/View$OnLongClickListener;I)V

    goto :goto_3

    :cond_6
    move-object v4, p4

    goto :goto_0
.end method

.method public static native nativePlatformOnBlur(J)Z
.end method

.method public static native nativePlatformOnChange(JLjava/lang/String;)I
.end method

.method public static native nativePlatformOnClick(J)Z
.end method

.method public static native nativePlatformOnFocus(J)Z
.end method

.method public static native nativePlatformOnInput(JLjava/lang/String;)I
.end method

.method public static native nativePlatformOnKeyDown(JI)Z
.end method

.method public static native nativePlatformOnLongpress(J)Z
.end method

.method public static native nativePlatformOnMouseDown(JII)Z
.end method

.method public static native nativePlatformOnMouseMove(JII)Z
.end method

.method public static native nativePlatformOnMouseUp(JII)Z
.end method


# virtual methods
.method protected a(I)V
    .locals 0

    .prologue
    .line 627
    return-void
.end method

.method public addView(Lcom/flybird/FBView;)V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    .line 146
    iget-object v1, p1, Lcom/flybird/FBView;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 147
    return-void
.end method

.method public destroy()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 562
    iput-boolean v0, p0, Lcom/flybird/FBView;->o:Z

    .line 563
    iget-object v1, p0, Lcom/flybird/FBView;->e:Lcom/flybird/FBDocument;

    iget-object v1, v1, Lcom/flybird/FBDocument;->mRoot:Lcom/flybird/FBView;

    if-ne p0, v1, :cond_0

    .line 565
    :goto_0
    if-nez v0, :cond_1

    .line 566
    invoke-virtual {p0}, Lcom/flybird/FBView;->doDestroy()V

    .line 585
    :goto_1
    return-void

    .line 563
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 572
    :cond_1
    iget-object v0, p0, Lcom/flybird/FBView;->e:Lcom/flybird/FBDocument;

    iget-object v0, v0, Lcom/flybird/FBDocument;->mViewMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 583
    iget-object v0, p0, Lcom/flybird/FBView;->e:Lcom/flybird/FBDocument;

    invoke-virtual {v0}, Lcom/flybird/FBDocument;->destroy()V

    .line 584
    invoke-virtual {p0}, Lcom/flybird/FBView;->doDestroy()V

    goto :goto_1

    .line 572
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 573
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 574
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flybird/FBView;

    .line 576
    if-eq v0, p0, :cond_2

    .line 577
    invoke-virtual {v0}, Lcom/flybird/FBView;->doDestroy()V

    goto :goto_2
.end method

.method public doDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 549
    iput-object v1, p0, Lcom/flybird/FBView;->e:Lcom/flybird/FBDocument;

    .line 550
    iput-object v1, p0, Lcom/flybird/FBView;->j:Landroid/widget/FrameLayout$LayoutParams;

    .line 551
    iput-object v1, p0, Lcom/flybird/FBView;->m:[F

    .line 552
    iget-object v0, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    instance-of v0, v0, Lcom/flybird/IBorderable;

    if-eqz v0, :cond_0

    .line 553
    iget-object v0, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    check-cast v0, Lcom/flybird/IBorderable;

    invoke-interface {v0}, Lcom/flybird/IBorderable;->destory()V

    .line 555
    :cond_0
    iput-object v1, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    .line 556
    iput-object v1, p0, Lcom/flybird/FBView;->mTag:Ljava/lang/String;

    .line 557
    iput-object v1, p0, Lcom/flybird/FBView;->a:[Ljava/lang/String;

    .line 558
    return-void
.end method

.method public getContextHashCode()I
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Lcom/flybird/FBView;->e:Lcom/flybird/FBDocument;

    iget-object v0, v0, Lcom/flybird/FBDocument;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public getEncryptValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 598
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public getFBDocument()Lcom/flybird/FBDocument;
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/flybird/FBView;->e:Lcom/flybird/FBDocument;

    return-object v0
.end method

.method public getOpacity()F
    .locals 1

    .prologue
    .line 623
    iget v0, p0, Lcom/flybird/FBView;->q:F

    return v0
.end method

.method public hiddenKeyboardService(Z)Z
    .locals 2

    .prologue
    .line 603
    iget-object v0, p0, Lcom/flybird/FBView;->e:Lcom/flybird/FBDocument;

    iget-object v1, p0, Lcom/flybird/FBView;->e:Lcom/flybird/FBDocument;

    iget-object v1, v1, Lcom/flybird/FBDocument;->mContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/flybird/FBDocument;->hiddenKeyboardService(Landroid/view/View;Z)Z

    move-result v0

    return v0
.end method

.method public isDestroyed()Z
    .locals 1

    .prologue
    .line 589
    iget-boolean v0, p0, Lcom/flybird/FBView;->o:Z

    return v0
.end method

.method public needHandleClick()Z
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/flybird/FBView;->f:Z

    return v0
.end method

.method public needHandleLongClick(Z)V
    .locals 0

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/flybird/FBView;->g:Z

    .line 115
    return-void
.end method

.method public needHandleLongClick()Z
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/flybird/FBView;->g:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 508
    iget-object v0, p0, Lcom/flybird/FBView;->e:Lcom/flybird/FBDocument;

    if-nez v0, :cond_1

    .line 516
    :cond_0
    :goto_0
    return-void

    .line 511
    :cond_1
    iget-object v0, p0, Lcom/flybird/FBView;->e:Lcom/flybird/FBDocument;

    invoke-virtual {v0}, Lcom/flybird/FBDocument;->getGlobalClick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/flybird/FBView;->e:Lcom/flybird/FBDocument;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/flybird/FBDocument;->setGlobalClick(Z)V

    .line 515
    iget-wide v0, p0, Lcom/flybird/FBView;->mNode:J

    invoke-static {v0, v1}, Lcom/flybird/FBView;->nativePlatformOnClick(J)Z

    goto :goto_0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 608
    new-instance v0, Lcom/flybird/FBView$3;

    invoke-direct {v0, p0, p2}, Lcom/flybird/FBView$3;-><init>(Lcom/flybird/FBView;Z)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 620
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 531
    iget-object v2, p0, Lcom/flybird/FBView;->e:Lcom/flybird/FBDocument;

    if-nez v2, :cond_1

    .line 545
    :cond_0
    :goto_0
    return v0

    .line 534
    :cond_1
    const/4 v2, 0x4

    if-ne p2, v2, :cond_0

    .line 535
    iget-object v2, p0, Lcom/flybird/FBView;->e:Lcom/flybird/FBDocument;

    invoke-virtual {v2}, Lcom/flybird/FBDocument;->getGlobalClick()Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .line 536
    goto :goto_0

    .line 538
    :cond_2
    iget-object v2, p0, Lcom/flybird/FBView;->e:Lcom/flybird/FBDocument;

    invoke-virtual {v2, v0}, Lcom/flybird/FBDocument;->setGlobalClick(Z)V

    .line 539
    iget-object v2, p0, Lcom/flybird/FBView;->e:Lcom/flybird/FBDocument;

    iget-object v3, p0, Lcom/flybird/FBView;->e:Lcom/flybird/FBDocument;

    iget-object v3, v3, Lcom/flybird/FBDocument;->mContext:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/flybird/FBDocument;->hiddenKeyboardService(Landroid/view/View;Z)Z

    move-result v0

    .line 540
    if-eqz v0, :cond_3

    move v0, v1

    .line 541
    goto :goto_0

    .line 543
    :cond_3
    iget-wide v0, p0, Lcom/flybird/FBView;->mNode:J

    invoke-static {v0, v1, p2}, Lcom/flybird/FBView;->nativePlatformOnKeyDown(JI)Z

    move-result v0

    goto :goto_0
.end method

.method public onLoadFinish()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flybird/FBView;->a(Z)V

    .line 102
    iget-object v0, p0, Lcom/flybird/FBView;->e:Lcom/flybird/FBDocument;

    invoke-virtual {v0}, Lcom/flybird/FBDocument;->isFullscreen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBView;->e:Lcom/flybird/FBDocument;

    iget-boolean v0, v0, Lcom/flybird/FBDocument;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    instance-of v0, v0, Lcom/flybird/FBScrollView;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 104
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 105
    iget-object v0, p0, Lcom/flybird/FBView;->e:Lcom/flybird/FBDocument;

    invoke-virtual {v0}, Lcom/flybird/FBDocument;->getBodyView()Lcom/flybird/FBView;

    move-result-object v0

    iget-object v0, v0, Lcom/flybird/FBView;->j:Landroid/widget/FrameLayout$LayoutParams;

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 107
    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 520
    iget-object v0, p0, Lcom/flybird/FBView;->e:Lcom/flybird/FBDocument;

    if-nez v0, :cond_0

    .line 521
    const/4 v0, 0x1

    .line 522
    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/flybird/FBView;->mNode:J

    invoke-static {v0, v1}, Lcom/flybird/FBView;->nativePlatformOnLongpress(J)Z

    move-result v0

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 444
    iget-object v0, p0, Lcom/flybird/FBView;->e:Lcom/flybird/FBDocument;

    if-nez v0, :cond_0

    move v1, v3

    .line 503
    :goto_0
    return v1

    .line 449
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 452
    :pswitch_0
    iget-wide v1, p0, Lcom/flybird/FBView;->mNode:J

    .line 453
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iget-object v0, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/flybird/FBTools;->getDp(Landroid/app/Activity;)F

    move-result v0

    div-float v0, v3, v0

    float-to-int v3, v0

    .line 454
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iget-object v0, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/flybird/FBTools;->getDp(Landroid/app/Activity;)F

    move-result v0

    div-float v0, v4, v0

    float-to-int v0, v0

    .line 452
    invoke-static {v1, v2, v3, v0}, Lcom/flybird/FBView;->nativePlatformOnMouseDown(JII)Z

    move-result v2

    .line 455
    if-eqz v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_1
    iput-wide v0, p0, Lcom/flybird/FBView;->p:J

    move v1, v2

    .line 456
    goto :goto_0

    .line 455
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_1

    .line 460
    :pswitch_1
    iget-wide v4, p0, Lcom/flybird/FBView;->mNode:J

    .line 461
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget-object v0, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/flybird/FBTools;->getDp(Landroid/app/Activity;)F

    move-result v0

    div-float v0, v2, v0

    float-to-int v2, v0

    .line 462
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    iget-object v0, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/flybird/FBTools;->getDp(Landroid/app/Activity;)F

    move-result v0

    div-float v0, v6, v0

    float-to-int v0, v0

    .line 460
    invoke-static {v4, v5, v2, v0}, Lcom/flybird/FBView;->nativePlatformOnMouseUp(JII)Z

    move-result v2

    .line 464
    iget-object v0, p0, Lcom/flybird/FBView;->e:Lcom/flybird/FBDocument;

    if-eqz v0, :cond_2

    .line 465
    iget-object v4, p0, Lcom/flybird/FBView;->e:Lcom/flybird/FBDocument;

    .line 466
    if-eqz v4, :cond_2

    .line 468
    :goto_2
    iget-object v0, v4, Lcom/flybird/FBDocument;->mScrollViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_3

    .line 475
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/flybird/FBView;->p:J

    sub-long/2addr v0, v3

    const-wide/16 v3, 0x1f4

    cmp-long v0, v0, v3

    if-gez v0, :cond_6

    .line 476
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    move v1, v2

    .line 479
    goto/16 :goto_0

    .line 469
    :cond_3
    iget-object v0, v4, Lcom/flybird/FBDocument;->mScrollViewList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flybird/FBScrollView;

    .line 470
    invoke-virtual {v0, v3}, Lcom/flybird/FBScrollView;->setScrollable(Z)V

    .line 468
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 483
    :pswitch_2
    iget-wide v2, p0, Lcom/flybird/FBView;->mNode:J

    .line 484
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    iget-object v0, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/flybird/FBTools;->getDp(Landroid/app/Activity;)F

    move-result v0

    div-float v0, v4, v0

    float-to-int v4, v0

    .line 485
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    iget-object v0, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/flybird/FBTools;->getDp(Landroid/app/Activity;)F

    move-result v0

    div-float v0, v5, v0

    float-to-int v0, v0

    .line 483
    invoke-static {v2, v3, v4, v0}, Lcom/flybird/FBView;->nativePlatformOnMouseMove(JII)Z

    move-result v3

    .line 487
    iget-object v0, p0, Lcom/flybird/FBView;->e:Lcom/flybird/FBDocument;

    if-eqz v0, :cond_4

    .line 488
    iget-object v4, p0, Lcom/flybird/FBView;->e:Lcom/flybird/FBDocument;

    .line 489
    if-eqz v4, :cond_4

    move v2, v1

    .line 491
    :goto_3
    iget-object v0, v4, Lcom/flybird/FBDocument;->mScrollViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v2, v0, :cond_5

    :cond_4
    move v1, v3

    goto/16 :goto_0

    .line 492
    :cond_5
    iget-object v0, v4, Lcom/flybird/FBDocument;->mScrollViewList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flybird/FBScrollView;

    .line 493
    invoke-virtual {v0, v1}, Lcom/flybird/FBScrollView;->setScrollable(Z)V

    .line 491
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_6
    move v1, v2

    goto/16 :goto_0

    .line 449
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public removeView(Lcom/flybird/FBView;)V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    .line 152
    iget-object v1, p1, Lcom/flybird/FBView;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 153
    return-void
.end method

.method public setRect(FFFF)V
    .locals 2

    .prologue
    .line 123
    float-to-int v0, p3

    iput v0, p0, Lcom/flybird/FBView;->c:I

    .line 124
    float-to-int v0, p4

    iput v0, p0, Lcom/flybird/FBView;->d:I

    .line 125
    iget-object v0, p0, Lcom/flybird/FBView;->j:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/flybird/FBView;->c:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 126
    iget-object v0, p0, Lcom/flybird/FBView;->j:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/flybird/FBView;->d:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 128
    iget-object v0, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    instance-of v0, v0, Lcom/flybird/FBScrollView;

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 130
    if-eqz v0, :cond_0

    .line 131
    float-to-int v1, p2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 132
    float-to-int v1, p1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 133
    iget v1, p0, Lcom/flybird/FBView;->d:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 140
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 141
    return-void

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/flybird/FBView;->j:Landroid/widget/FrameLayout$LayoutParams;

    float-to-int v1, p1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 137
    iget-object v0, p0, Lcom/flybird/FBView;->j:Landroid/widget/FrameLayout$LayoutParams;

    float-to-int v1, p2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0
.end method

.method public updateAttr(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 323
    const-string/jumbo v0, "fullscreen"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 324
    iget-object v0, p0, Lcom/flybird/FBView;->e:Lcom/flybird/FBDocument;

    const-string/jumbo v1, "true"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/flybird/FBDocument;->setFullscreen(Z)V

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 325
    :cond_1
    const-string/jumbo v0, "disabled"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 326
    const-string/jumbo v0, "disabled"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 327
    :goto_1
    iget-object v3, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    if-eqz v0, :cond_3

    :goto_2
    invoke-virtual {v3, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 326
    goto :goto_1

    :cond_3
    move v1, v2

    .line 327
    goto :goto_2

    .line 328
    :cond_4
    const-string/jumbo v0, "id"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 329
    iget-object v0, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 330
    :cond_5
    const-string/jumbo v0, "scrollTop"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/flybird/FBView;->e:Lcom/flybird/FBDocument;

    invoke-virtual {v0}, Lcom/flybird/FBDocument;->isOnloadFinish()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    invoke-static {p2}, Lcom/flybird/FBTools;->parseUnit(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->scrollTo(II)V

    goto :goto_0
.end method

.method public updateCSS(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 231
    const-string/jumbo v0, "background-color"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 232
    iget-object v0, p0, Lcom/flybird/FBView;->a:[Ljava/lang/String;

    aput-object p2, v0, v2

    .line 233
    invoke-direct {p0, v4}, Lcom/flybird/FBView;->a(Z)V

    .line 234
    iput-boolean v4, p0, Lcom/flybird/FBView;->n:Z

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    const-string/jumbo v0, "background-color:active"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 237
    iget-object v0, p0, Lcom/flybird/FBView;->a:[Ljava/lang/String;

    aput-object p2, v0, v4

    .line 238
    invoke-direct {p0, v4}, Lcom/flybird/FBView;->a(Z)V

    .line 239
    iput-boolean v4, p0, Lcom/flybird/FBView;->n:Z

    goto :goto_0

    .line 240
    :cond_2
    const-string/jumbo v0, "background-color:disabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 242
    iget-object v0, p0, Lcom/flybird/FBView;->a:[Ljava/lang/String;

    aput-object p2, v0, v5

    .line 243
    invoke-direct {p0, v4}, Lcom/flybird/FBView;->a(Z)V

    .line 244
    iput-boolean v4, p0, Lcom/flybird/FBView;->n:Z

    goto :goto_0

    .line 245
    :cond_3
    const-string/jumbo v0, "border"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 246
    const-string/jumbo v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 248
    array-length v0, v3

    if-lez v0, :cond_0

    move v1, v2

    .line 249
    :goto_1
    array-length v0, v3

    if-lt v1, v0, :cond_5

    .line 266
    iget-boolean v0, p0, Lcom/flybird/FBView;->n:Z

    if-nez v0, :cond_4

    .line 267
    iget-object v0, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 269
    :cond_4
    iget-object v0, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    instance-of v0, v0, Lcom/flybird/IBorderable;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    check-cast v0, Lcom/flybird/IBorderable;

    iget v1, p0, Lcom/flybird/FBView;->b:I

    iget v2, p0, Lcom/flybird/FBView;->k:F

    float-to-int v2, v2

    invoke-interface {v0, v1, v2}, Lcom/flybird/IBorderable;->setBorder(II)V

    goto :goto_0

    .line 250
    :cond_5
    aget-object v4, v3, v1

    .line 251
    const-string/jumbo v0, "#"

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 252
    const-string/jumbo v0, "solid"

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string/jumbo v0, "px"

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string/jumbo v0, "PX"

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 254
    :cond_6
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v4, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/flybird/FBView;->k:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    :goto_2
    const-string/jumbo v0, "PX"

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 259
    iget v4, p0, Lcom/flybird/FBView;->k:F

    iget-object v0, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/flybird/FBTools;->getDp(Landroid/app/Activity;)F

    move-result v0

    mul-float/2addr v0, v4

    iput v0, p0, Lcom/flybird/FBView;->k:F

    .line 249
    :cond_7
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 255
    :catch_0
    move-exception v0

    .line 256
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "exception"

    invoke-static {v5, v6, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 263
    :cond_8
    invoke-static {v4}, Lcom/flybird/FBTools;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/flybird/FBView;->b:I

    goto :goto_3

    .line 274
    :cond_9
    const-string/jumbo v0, "border-radius"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 275
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 276
    iget-object v0, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/flybird/FBTools;->getDp(Landroid/app/Activity;)F

    move-result v0

    mul-float/2addr v0, v1

    .line 275
    iput v0, p0, Lcom/flybird/FBView;->l:F

    .line 277
    iget-object v0, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    instance-of v0, v0, Lcom/flybird/IBorderable;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    check-cast v0, Lcom/flybird/IBorderable;

    iget v1, p0, Lcom/flybird/FBView;->l:F

    float-to-int v1, v1

    invoke-interface {v0, v1}, Lcom/flybird/IBorderable;->setBorderRadius(I)V

    goto/16 :goto_0

    .line 280
    :cond_a
    const-string/jumbo v0, "visibility"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 282
    const-string/jumbo v0, "visibility-display"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 283
    :cond_b
    iget-object v0, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    .line 284
    const-string/jumbo v1, "visible"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 285
    iget-object v1, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 289
    :cond_c
    :goto_4
    iget-object v1, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    .line 290
    if-eq v0, v1, :cond_0

    .line 291
    invoke-virtual {p0, v1}, Lcom/flybird/FBView;->a(I)V

    goto/16 :goto_0

    .line 286
    :cond_d
    const-string/jumbo v1, "hidden"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 287
    iget-object v1, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 293
    :cond_e
    const-string/jumbo v0, "overflow"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 294
    const-string/jumbo v0, "scroll"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    instance-of v0, v0, Lcom/flybird/FBScrollView;

    if-nez v0, :cond_0

    :cond_f
    const-string/jumbo v0, "hidden"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    instance-of v0, v0, Lcom/flybird/FBScrollView;

    if-eqz v0, :cond_0

    :cond_10
    iget-object v0, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const-string/jumbo v2, "scroll"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    if-eqz v1, :cond_11

    iget-object v2, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_11
    new-instance v2, Lcom/flybird/FBScrollView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v0, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-direct {v2, v3, v0}, Lcom/flybird/FBScrollView;-><init>(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    if-eqz v1, :cond_12

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_12
    iget-object v0, p0, Lcom/flybird/FBView;->e:Lcom/flybird/FBDocument;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/flybird/FBView;->e:Lcom/flybird/FBDocument;

    if-eqz v0, :cond_13

    iget-object v1, v0, Lcom/flybird/FBDocument;->mScrollViewList:Ljava/util/ArrayList;

    move-object v0, v2

    check-cast v0, Lcom/flybird/FBScrollView;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    iget-object v0, p0, Lcom/flybird/FBView;->e:Lcom/flybird/FBDocument;

    invoke-virtual {v0}, Lcom/flybird/FBDocument;->getDocumentAssistor()Lcom/flybird/FBDocumentAssistor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flybird/FBDocumentAssistor;->getScreenHeight()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/flybird/FBView;->d:I

    iget-object v0, p0, Lcom/flybird/FBView;->e:Lcom/flybird/FBDocument;

    invoke-virtual {v0}, Lcom/flybird/FBDocument;->getDocumentAssistor()Lcom/flybird/FBDocumentAssistor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flybird/FBDocumentAssistor;->getScreenWidth()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/flybird/FBView;->c:I

    move-object v1, v2

    :cond_14
    :goto_5
    iput-object v1, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "alipay_msp_view_wrapper"

    const-string/jumbo v2, "id"

    const-string/jumbo v3, "com.alipay.android.app.template"

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/android/app/template/ResUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    invoke-virtual {v1, v0, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_15
    move-object v1, v0

    check-cast v1, Lcom/flybird/FBScrollView;

    invoke-virtual {v1}, Lcom/flybird/FBScrollView;->getContainer()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    check-cast v0, Lcom/flybird/FBScrollView;

    invoke-virtual {v0, v1}, Lcom/flybird/FBScrollView;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/flybird/FBView;->e:Lcom/flybird/FBDocument;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/flybird/FBView;->e:Lcom/flybird/FBDocument;

    if-eqz v0, :cond_14

    iget-object v0, v0, Lcom/flybird/FBDocument;->mScrollViewList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_5

    .line 295
    :cond_16
    const-string/jumbo v0, "opacity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 296
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/flybird/FBView;->q:F

    .line 297
    iget-object v0, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    iget v1, p0, Lcom/flybird/FBView;->q:F

    invoke-static {v0, v1}, Lcom/alipay/android/app/template/util/UiUtil;->setAlpha(Landroid/view/View;F)V

    .line 298
    iget-object v0, p0, Lcom/flybird/FBView;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "body"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 300
    if-eqz v0, :cond_0

    .line 301
    iget v1, p0, Lcom/flybird/FBView;->q:F

    invoke-static {v0, v1}, Lcom/alipay/android/app/template/util/UiUtil;->setAlpha(Landroid/view/View;F)V

    goto/16 :goto_0

    .line 304
    :cond_17
    const-string/jumbo v0, "padding"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 306
    const-string/jumbo v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 308
    iget-object v1, p0, Lcom/flybird/FBView;->m:[F

    aget-object v3, v0, v6

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    aput v3, v1, v2

    .line 309
    iget-object v1, p0, Lcom/flybird/FBView;->m:[F

    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    aput v3, v1, v4

    .line 310
    iget-object v1, p0, Lcom/flybird/FBView;->m:[F

    aget-object v3, v0, v4

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    aput v3, v1, v5

    .line 311
    iget-object v1, p0, Lcom/flybird/FBView;->m:[F

    aget-object v0, v0, v5

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    aput v0, v1, v6

    .line 313
    iget-object v1, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/flybird/FBView;->m:[F

    aget v2, v0, v2

    iget v3, p0, Lcom/flybird/FBView;->l:F

    iget-object v0, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/flybird/FBTools;->getDp(Landroid/app/Activity;)F

    move-result v0

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    float-to-int v2, v0

    iget-object v0, p0, Lcom/flybird/FBView;->m:[F

    aget v3, v0, v4

    iget v4, p0, Lcom/flybird/FBView;->l:F

    iget-object v0, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/flybird/FBTools;->getDp(Landroid/app/Activity;)F

    move-result v0

    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    float-to-int v3, v0

    iget-object v0, p0, Lcom/flybird/FBView;->m:[F

    aget v4, v0, v5

    iget v5, p0, Lcom/flybird/FBView;->l:F

    iget-object v0, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/flybird/FBTools;->getDp(Landroid/app/Activity;)F

    move-result v0

    mul-float/2addr v0, v5

    add-float/2addr v0, v4

    float-to-int v4, v0

    iget-object v0, p0, Lcom/flybird/FBView;->m:[F

    aget v5, v0, v6

    iget v6, p0, Lcom/flybird/FBView;->l:F

    iget-object v0, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/flybird/FBTools;->getDp(Landroid/app/Activity;)F

    move-result v0

    mul-float/2addr v0, v6

    add-float/2addr v0, v5

    float-to-int v0, v0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_0

    .line 314
    :cond_18
    const-string/jumbo v0, "width"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 315
    iput-boolean v4, p0, Lcom/flybird/FBView;->h:Z

    goto/16 :goto_0

    .line 316
    :cond_19
    const-string/jumbo v0, "height"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    iput-boolean v4, p0, Lcom/flybird/FBView;->i:Z

    goto/16 :goto_0
.end method

.method public updateEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 358
    const-string/jumbo v0, "event"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    const-string/jumbo v0, "onclick"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 361
    iget-object v0, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 362
    iput-boolean v1, p0, Lcom/flybird/FBView;->f:Z

    .line 378
    :cond_0
    :goto_0
    return-void

    .line 363
    :cond_1
    const-string/jumbo v0, "onmousedown"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 364
    iget-object v0, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 365
    :cond_2
    const-string/jumbo v0, "onmouseup"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 366
    iget-object v0, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 367
    :cond_3
    const-string/jumbo v0, "onmousemove"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 368
    iget-object v0, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 369
    :cond_4
    const-string/jumbo v0, "onkeydown"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 370
    iget-object v0, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    goto :goto_0

    .line 371
    :cond_5
    const-string/jumbo v0, "onlongpress"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 372
    iget-object v0, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 373
    iput-boolean v1, p0, Lcom/flybird/FBView;->g:Z

    goto :goto_0

    .line 374
    :cond_6
    const-string/jumbo v0, "onfocus"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string/jumbo v0, "onblur"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    :cond_7
    iget-object v0, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto :goto_0
.end method

.method public updateFunc(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 338
    const-string/jumbo v0, "focus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 339
    iget-object v0, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    new-instance v1, Lcom/flybird/FBView$1;

    invoke-direct {v1, p0}, Lcom/flybird/FBView$1;-><init>(Lcom/flybird/FBView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    const-string/jumbo v0, "blur"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    new-instance v1, Lcom/flybird/FBView$2;

    invoke-direct {v1, p0}, Lcom/flybird/FBView$2;-><init>(Lcom/flybird/FBView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 352
    iget-object v0, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    goto :goto_0
.end method
