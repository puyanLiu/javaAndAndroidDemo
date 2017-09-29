.class public Lcom/alipay/android/app/ui/quickpay/widget/CustomLinearLayout;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:Landroid/view/View$OnKeyListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomLinearLayout;->a:Landroid/view/View$OnKeyListener;

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomLinearLayout;->a:Landroid/view/View$OnKeyListener;

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomLinearLayout;->a:Landroid/view/View$OnKeyListener;

    .line 14
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 26
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    if-ne v0, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 28
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomLinearLayout;->a:Landroid/view/View$OnKeyListener;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomLinearLayout;->a:Landroid/view/View$OnKeyListener;

    invoke-interface {v0, p0, v2, p1}, Landroid/view/View$OnKeyListener;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 32
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setOnKeyListener(Landroid/view/View$OnKeyListener;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomLinearLayout;->a:Landroid/view/View$OnKeyListener;

    .line 37
    return-void
.end method
