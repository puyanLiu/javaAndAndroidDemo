.class public Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu;
.super Landroid/app/Dialog;
.source "SingleChoiceContextMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu$ItemChoiceSelectListener;,
        Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu$MenuItem;
    }
.end annotation


# instance fields
.field private a:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private b:Landroid/view/View;

.field private c:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

.field private d:Landroid/app/Activity;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 38
    sget v0, Lcom/alipay/mobile/personalbase/R$style;->a:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 39
    iput-object p1, p0, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu;->d:Landroid/app/Activity;

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 44
    return-void
.end method


# virtual methods
.method public getmBindData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu;->e:Ljava/lang/String;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 53
    sget v0, Lcom/alipay/mobile/personalbase/R$layout;->a:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu;->setContentView(I)V

    .line 54
    sget v0, Lcom/alipay/mobile/personalbase/R$id;->b:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu;->a:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 55
    sget v0, Lcom/alipay/mobile/personalbase/R$id;->c:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu;->b:Landroid/view/View;

    .line 56
    sget v0, Lcom/alipay/mobile/personalbase/R$id;->a:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu;->c:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    .line 57
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu;->setCanceledOnTouchOutside(Z)V

    .line 58
    return-void
.end method

.method public setmBindData(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu;->e:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public showDialog(Ljava/lang/String;Ljava/util/List;Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu$ItemChoiceSelectListener;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu$MenuItem;",
            ">;",
            "Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu$ItemChoiceSelectListener;",
            ")V"
        }
    .end annotation

    .prologue
    const/16 v3, 0x8

    const/4 v6, -0x2

    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v2, 0x0

    .line 62
    if-nez p2, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu;->dismiss()V

    .line 85
    :goto_0
    return-void

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 67
    invoke-virtual {p0}, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu;->show()V

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu;->d:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 70
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 71
    invoke-virtual {p0}, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 72
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 73
    invoke-virtual {p0}, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 74
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu;->a:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 76
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu;->b:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 83
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu;->c:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->removeAllViews()V

    .line 84
    iget-object v3, p0, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu;->c:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    new-instance v4, Landroid/widget/ScrollView;

    iget-object v0, p0, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu;->d:Landroid/app/Activity;

    invoke-direct {v4, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v2}, Landroid/widget/ScrollView;->setVerticalFadingEdgeEnabled(Z)V

    invoke-virtual {v4, v2}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {v4, v2}, Landroid/widget/ScrollView;->setHorizontalFadingEdgeEnabled(Z)V

    invoke-virtual {v4, v2}, Landroid/widget/ScrollView;->setHorizontalScrollBarEnabled(Z)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v9, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v0}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iget-object v0, p0, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu;->d:Landroid/app/Activity;

    invoke-direct {v5, v0}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v9, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v0}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v5, v10}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setOrientation(I)V

    move v1, v2

    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_3

    invoke-virtual {v4, v5}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 78
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 79
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu;->a:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 80
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu;->a:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 84
    :cond_3
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu$MenuItem;

    new-instance v6, Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v7, p0, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu;->d:Landroid/app/Activity;

    invoke-direct {v6, v7}, Lcom/alipay/mobile/commonui/widget/APTextView;-><init>(Landroid/content/Context;)V

    iget-object v7, v0, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu$MenuItem;->mItemText:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu;->d:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/alipay/mobile/personalbase/R$dimen;->b:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v6, v7, v2, v7, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setPadding(IIII)V

    const/16 v7, 0x13

    invoke-virtual {v6, v7}, Lcom/alipay/mobile/commonui/widget/APTextView;->setGravity(I)V

    const/4 v7, 0x2

    const/high16 v8, 0x41800000    # 16.0f

    invoke-virtual {v6, v7, v8}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextSize(IF)V

    invoke-virtual {v6, v10}, Lcom/alipay/mobile/commonui/widget/APTextView;->setSingleLine(Z)V

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v6, v7}, Lcom/alipay/mobile/commonui/widget/APTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    sget v7, Lcom/alipay/mobile/personalbase/R$drawable;->a:I

    invoke-virtual {v6, v7}, Lcom/alipay/mobile/commonui/widget/APTextView;->setBackgroundResource(I)V

    invoke-virtual {p0}, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/alipay/mobile/personalbase/R$color;->a:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/alipay/mobile/personalbase/R$dimen;->a:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v6, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTag(Ljava/lang/Object;)V

    new-instance v0, Lcom/alipay/mobile/personalbase/view/a;

    invoke-direct {v0, p0, p3}, Lcom/alipay/mobile/personalbase/view/a;-><init>(Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu;Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu$ItemChoiceSelectListener;)V

    invoke-virtual {v6, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v9, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6, v0}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_4

    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/alipay/mobile/personalbase/R$color;->b:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v0, v6}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_2
.end method
