.class final Lcom/alipay/android/app/display/uielement/y;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/display/uielement/UICheckBox;

.field private b:[I


# direct methods
.method constructor <init>(Lcom/alipay/android/app/display/uielement/UICheckBox;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/alipay/android/app/display/uielement/y;->a:Lcom/alipay/android/app/display/uielement/UICheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 119
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/y;->a:Lcom/alipay/android/app/display/uielement/UICheckBox;

    invoke-static {v0}, Lcom/alipay/android/app/display/uielement/UICheckBox;->a(Lcom/alipay/android/app/display/uielement/UICheckBox;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 136
    :cond_0
    :goto_0
    return v4

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/y;->a:Lcom/alipay/android/app/display/uielement/UICheckBox;

    invoke-static {v0}, Lcom/alipay/android/app/display/uielement/UICheckBox;->a(Lcom/alipay/android/app/display/uielement/UICheckBox;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 124
    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p1}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    .line 128
    iget-object v2, p0, Lcom/alipay/android/app/display/uielement/y;->b:[I

    if-nez v2, :cond_2

    .line 129
    iget-object v2, p0, Lcom/alipay/android/app/display/uielement/y;->a:Lcom/alipay/android/app/display/uielement/UICheckBox;

    invoke-static {v2}, Lcom/alipay/android/app/display/uielement/UICheckBox;->a(Lcom/alipay/android/app/display/uielement/UICheckBox;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/android/app/display/uielement/y;->b:[I

    .line 131
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    .line 132
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    .line 133
    :cond_3
    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/y;->b:[I

    if-eqz v1, :cond_0

    .line 134
    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/y;->b:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0
.end method
