.class final Lcom/alipay/mobile/socialsdk/api/view/l;
.super Landroid/support/v4/view/AccessibilityDelegateCompat;
.source "HorizontalListView.java"


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;)V
    .locals 0

    .prologue
    .line 6409
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/api/view/l;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-direct {p0}, Landroid/support/v4/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;B)V
    .locals 0

    .prologue
    .line 6409
    invoke-direct {p0, p1}, Lcom/alipay/mobile/socialsdk/api/view/l;-><init>(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;)V

    return-void
.end method


# virtual methods
.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 6412
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 6414
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/l;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    .line 6415
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/api/view/l;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-virtual {v1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 6418
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    if-nez v1, :cond_1

    .line 6443
    :cond_0
    :goto_0
    return-void

    .line 6423
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/api/view/l;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-virtual {v2}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6427
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/api/view/l;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-virtual {v1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getSelectedItemPosition()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 6428
    invoke-virtual {p2, v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setSelected(Z)V

    .line 6429
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 6434
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/l;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6435
    const/16 v0, 0x10

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 6436
    invoke-virtual {p2, v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setClickable(Z)V

    .line 6439
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/l;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6440
    const/16 v0, 0x20

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 6441
    invoke-virtual {p2, v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setLongClickable(Z)V

    goto :goto_0

    .line 6431
    :cond_3
    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    goto :goto_1
.end method

.method public final performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 6447
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6494
    :goto_0
    return v0

    .line 6451
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/api/view/l;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-virtual {v2, p1}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getPositionForView(Landroid/view/View;)I

    move-result v2

    .line 6452
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/api/view/l;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-virtual {v3}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    .line 6455
    if-eq v2, v5, :cond_1

    if-nez v3, :cond_2

    :cond_1
    move v0, v1

    .line 6456
    goto :goto_0

    .line 6460
    :cond_2
    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/api/view/l;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-virtual {v4}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3, v2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    move v0, v1

    .line 6461
    goto :goto_0

    .line 6464
    :cond_4
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/api/view/l;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-virtual {v3, v2}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getItemIdAtPosition(I)J

    move-result-wide v3

    .line 6466
    sparse-switch p2, :sswitch_data_0

    move v0, v1

    .line 6494
    goto :goto_0

    .line 6468
    :sswitch_0
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/api/view/l;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-virtual {v3}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getSelectedItemPosition()I

    move-result v3

    if-ne v3, v2, :cond_5

    .line 6469
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/api/view/l;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-virtual {v1, v5}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->setSelection(I)V

    goto :goto_0

    :cond_5
    move v0, v1

    .line 6472
    goto :goto_0

    .line 6475
    :sswitch_1
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/api/view/l;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-virtual {v3}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->getSelectedItemPosition()I

    move-result v3

    if-eq v3, v2, :cond_6

    .line 6476
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/api/view/l;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->setSelection(I)V

    goto :goto_0

    :cond_6
    move v0, v1

    .line 6479
    goto :goto_0

    .line 6482
    :sswitch_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/l;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 6483
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/l;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-virtual {v0, p1, v2, v3, v4}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v0

    goto :goto_0

    :cond_7
    move v0, v1

    .line 6485
    goto :goto_0

    .line 6488
    :sswitch_3
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/l;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 6489
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/l;->a:Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;

    invoke-static {v0, p1, v2, v3, v4}, Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;->a(Lcom/alipay/mobile/socialsdk/api/view/HorizontalListView;Landroid/view/View;IJ)Z

    move-result v0

    goto :goto_0

    :cond_8
    move v0, v1

    .line 6491
    goto :goto_0

    .line 6466
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
        0x10 -> :sswitch_2
        0x20 -> :sswitch_3
    .end sparse-switch
.end method
