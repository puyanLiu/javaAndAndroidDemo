.class public Lcom/alipay/android/app/ui/quickpay/widget/CustomCheckbox;
.super Landroid/widget/ImageView;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/ui/quickpay/widget/CustomCheckbox$OnCheckedChangeListener;
    }
.end annotation


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private b:Z

.field private c:Lcom/alipay/android/app/ui/quickpay/widget/CustomCheckbox$OnCheckedChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomCheckbox;->a:Landroid/graphics/drawable/Drawable;

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomCheckbox;->b:Z

    .line 40
    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomCheckbox;->a()V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomCheckbox;->a:Landroid/graphics/drawable/Drawable;

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomCheckbox;->b:Z

    .line 35
    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomCheckbox;->a()V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomCheckbox;->a:Landroid/graphics/drawable/Drawable;

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomCheckbox;->b:Z

    .line 24
    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomCheckbox;->a()V

    .line 25
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0, p0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomCheckbox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomCheckbox;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 46
    return-void
.end method

.method private b()V
    .locals 4

    .prologue
    const/4 v1, 0x2

    .line 76
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomCheckbox;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomCheckbox;->b:Z

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomCheckbox;->a:Landroid/graphics/drawable/Drawable;

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 87
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomCheckbox;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomCheckbox;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 88
    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomCheckbox;->a:Landroid/graphics/drawable/Drawable;

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomCheckbox;->a:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, -0x101009e

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    .line 78
    nop

    :array_0
    .array-data 4
        0x101009e
        0x10100a0
    .end array-data

    .line 81
    :array_1
    .array-data 4
        0x101009e
        -0x10100a0
    .end array-data
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomCheckbox;->b:Z

    return v0
.end method

.method public onClick()V
    .locals 2

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomCheckbox;->b:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomCheckbox;->b:Z

    .line 92
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomCheckbox;->c:Lcom/alipay/android/app/ui/quickpay/widget/CustomCheckbox$OnCheckedChangeListener;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomCheckbox;->c:Lcom/alipay/android/app/ui/quickpay/widget/CustomCheckbox$OnCheckedChangeListener;

    iget-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomCheckbox;->b:Z

    invoke-interface {v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/CustomCheckbox$OnCheckedChangeListener;->a(Z)V

    .line 95
    :cond_0
    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomCheckbox;->b()V

    .line 96
    return-void

    .line 91
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 101
    return-void
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomCheckbox;->onClick()V

    .line 30
    invoke-super {p0}, Landroid/widget/ImageView;->performClick()Z

    move-result v0

    return v0
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomCheckbox;->a:Landroid/graphics/drawable/Drawable;

    .line 50
    invoke-virtual {p0, p1}, Lcom/alipay/android/app/ui/quickpay/widget/CustomCheckbox;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 51
    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomCheckbox;->b:Z

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomCheckbox;->c:Lcom/alipay/android/app/ui/quickpay/widget/CustomCheckbox$OnCheckedChangeListener;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomCheckbox;->c:Lcom/alipay/android/app/ui/quickpay/widget/CustomCheckbox$OnCheckedChangeListener;

    invoke-interface {v0, p1}, Lcom/alipay/android/app/ui/quickpay/widget/CustomCheckbox$OnCheckedChangeListener;->a(Z)V

    .line 63
    :cond_0
    iput-boolean p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomCheckbox;->b:Z

    .line 64
    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomCheckbox;->b()V

    .line 65
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/alipay/android/app/ui/quickpay/widget/CustomCheckbox$OnCheckedChangeListener;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomCheckbox;->c:Lcom/alipay/android/app/ui/quickpay/widget/CustomCheckbox$OnCheckedChangeListener;

    .line 73
    return-void
.end method
