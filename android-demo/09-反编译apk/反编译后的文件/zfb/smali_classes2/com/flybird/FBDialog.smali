.class public Lcom/flybird/FBDialog;
.super Lcom/flybird/FBView;
.source "FBDialog.java"


# instance fields
.field protected a:Landroid/app/AlertDialog;

.field private b:Landroid/widget/FrameLayout;

.field private k:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/flybird/FBDocument;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/flybird/FBView;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/flybird/FBDocument;)V

    .line 20
    iput-object v0, p0, Lcom/flybird/FBDialog;->b:Landroid/widget/FrameLayout;

    .line 22
    iput-object v0, p0, Lcom/flybird/FBDialog;->k:Landroid/widget/LinearLayout;

    .line 26
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flybird/FBDialog;->b:Landroid/widget/FrameLayout;

    .line 27
    iget-object v0, p0, Lcom/flybird/FBDialog;->j:Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 28
    iget-object v0, p0, Lcom/flybird/FBDialog;->b:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/flybird/FBDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 29
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 43
    iget-object v0, p0, Lcom/flybird/FBDialog;->a:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBDialog;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/flybird/FBDialog;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 45
    iget-object v0, p0, Lcom/flybird/FBDialog;->k:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/flybird/FBDialog;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 46
    iput-object v2, p0, Lcom/flybird/FBDialog;->k:Landroid/widget/LinearLayout;

    .line 47
    iput-object v2, p0, Lcom/flybird/FBDialog;->a:Landroid/app/AlertDialog;

    .line 48
    iget-object v0, p0, Lcom/flybird/FBDialog;->e:Lcom/flybird/FBDocument;

    invoke-virtual {v0, v2}, Lcom/flybird/FBDocument;->setShowingDialog(Landroid/app/Dialog;)V

    .line 50
    :cond_0
    return-void
.end method

.method public doDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 87
    iget-object v0, p0, Lcom/flybird/FBDialog;->a:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/flybird/FBDialog;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/flybird/FBDialog;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 91
    :cond_0
    iput-object v1, p0, Lcom/flybird/FBDialog;->a:Landroid/app/AlertDialog;

    .line 92
    iget-object v0, p0, Lcom/flybird/FBDialog;->e:Lcom/flybird/FBDocument;

    invoke-virtual {v0, v1}, Lcom/flybird/FBDocument;->setShowingDialog(Landroid/app/Dialog;)V

    .line 94
    :cond_1
    iput-object v1, p0, Lcom/flybird/FBDialog;->b:Landroid/widget/FrameLayout;

    .line 95
    iput-object v1, p0, Lcom/flybird/FBDialog;->k:Landroid/widget/LinearLayout;

    .line 96
    invoke-super {p0}, Lcom/flybird/FBView;->doDestroy()V

    .line 97
    return-void
.end method

.method public updateFunc(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 33
    invoke-super {p0, p1, p2}, Lcom/flybird/FBView;->updateFunc(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string/jumbo v0, "showModal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 35
    iget-object v0, p0, Lcom/flybird/FBDialog;->a:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flybird/FBDialog;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBDialog;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 40
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    iget-object v0, p0, Lcom/flybird/FBDialog;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/flybird/FBDialog;->k:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/flybird/FBDialog;->k:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, p0, Lcom/flybird/FBDialog;->k:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/flybird/FBDialog;->e:Lcom/flybird/FBDocument;

    iget-object v2, v2, Lcom/flybird/FBDocument;->mContext:Landroid/app/Activity;

    const-string/jumbo v3, "dialog_linear_layout"

    invoke-static {v2, v3}, Lcom/alipay/android/app/template/ResUtils;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setId(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v4, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iget-object v2, p0, Lcom/flybird/FBDialog;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/flybird/FBDialog;->k:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/flybird/FBDialog;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-static {}, Lcom/alipay/android/app/template/util/UiUtil;->isOppoDevice()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Landroid/app/AlertDialog$Builder;

    const v2, 0x1030074

    invoke-direct {v1, v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/flybird/FBDialog;->a:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/flybird/FBDialog;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    iget-object v0, p0, Lcom/flybird/FBDialog;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/flybird/FBDialog;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    iget-object v0, p0, Lcom/flybird/FBDialog;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-object v0, p0, Lcom/flybird/FBDialog;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x20008

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    iget-object v0, p0, Lcom/flybird/FBDialog;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Landroid/view/Window;->setLayout(II)V

    iget-object v0, p0, Lcom/flybird/FBDialog;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    iget-object v0, p0, Lcom/flybird/FBDialog;->a:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/flybird/FBDialog;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/flybird/FBDialog;->e:Lcom/flybird/FBDocument;

    iget-object v1, p0, Lcom/flybird/FBDialog;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Lcom/flybird/FBDocument;->setShowingDialog(Landroid/app/Dialog;)V

    goto/16 :goto_0

    :cond_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/flybird/FBDialog;->a:Landroid/app/AlertDialog;

    goto :goto_1

    .line 36
    :cond_3
    const-string/jumbo v0, "close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/flybird/FBDialog;->close()V

    goto/16 :goto_0
.end method
