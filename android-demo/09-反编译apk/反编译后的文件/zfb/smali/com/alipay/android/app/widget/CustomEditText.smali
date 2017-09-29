.class public Lcom/alipay/android/app/widget/CustomEditText;
.super Landroid/widget/EditText;

# interfaces
.implements Lcom/alipay/android/app/sys/IDispose;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/widget/CustomEditText$OnDoneListener;,
        Lcom/alipay/android/app/widget/CustomEditText$OnIconClickListener;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:Lcom/alipay/android/app/widget/CustomEditText$OnIconClickListener;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Landroid/widget/PopupWindow;

.field private k:Lcom/alipay/android/app/widget/CustomEditText$OnDoneListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 26
    iput-boolean v0, p0, Lcom/alipay/android/app/widget/CustomEditText;->a:Z

    .line 29
    iput v0, p0, Lcom/alipay/android/app/widget/CustomEditText;->d:I

    .line 30
    iput v0, p0, Lcom/alipay/android/app/widget/CustomEditText;->e:I

    .line 31
    iput v0, p0, Lcom/alipay/android/app/widget/CustomEditText;->f:I

    .line 32
    iput v0, p0, Lcom/alipay/android/app/widget/CustomEditText;->g:I

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    iput-boolean v0, p0, Lcom/alipay/android/app/widget/CustomEditText;->a:Z

    .line 29
    iput v0, p0, Lcom/alipay/android/app/widget/CustomEditText;->d:I

    .line 30
    iput v0, p0, Lcom/alipay/android/app/widget/CustomEditText;->e:I

    .line 31
    iput v0, p0, Lcom/alipay/android/app/widget/CustomEditText;->f:I

    .line 32
    iput v0, p0, Lcom/alipay/android/app/widget/CustomEditText;->g:I

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    iput-boolean v0, p0, Lcom/alipay/android/app/widget/CustomEditText;->a:Z

    .line 29
    iput v0, p0, Lcom/alipay/android/app/widget/CustomEditText;->d:I

    .line 30
    iput v0, p0, Lcom/alipay/android/app/widget/CustomEditText;->e:I

    .line 31
    iput v0, p0, Lcom/alipay/android/app/widget/CustomEditText;->f:I

    .line 32
    iput v0, p0, Lcom/alipay/android/app/widget/CustomEditText;->g:I

    .line 48
    return-void
.end method

.method private a()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 154
    iget-boolean v0, p0, Lcom/alipay/android/app/widget/CustomEditText;->a:Z

    if-nez v0, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/alipay/android/app/widget/CustomEditText;->dispose()V

    .line 172
    :goto_0
    return-void

    .line 158
    :cond_0
    iget-boolean v0, p0, Lcom/alipay/android/app/widget/CustomEditText;->a:Z

    if-eqz v0, :cond_1

    .line 159
    invoke-virtual {p0}, Lcom/alipay/android/app/widget/CustomEditText;->getWidth()I

    move-result v0

    .line 160
    invoke-virtual {p0}, Lcom/alipay/android/app/widget/CustomEditText;->getHeight()I

    move-result v1

    .line 161
    iget-object v2, p0, Lcom/alipay/android/app/widget/CustomEditText;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 162
    iget-object v3, p0, Lcom/alipay/android/app/widget/CustomEditText;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 163
    sub-int/2addr v0, v2

    div-int/lit8 v4, v2, 0x4

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/alipay/android/app/widget/CustomEditText;->d:I

    .line 164
    sub-int v0, v1, v3

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/alipay/android/app/widget/CustomEditText;->e:I

    .line 165
    iget v0, p0, Lcom/alipay/android/app/widget/CustomEditText;->d:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/alipay/android/app/widget/CustomEditText;->f:I

    .line 166
    iget v0, p0, Lcom/alipay/android/app/widget/CustomEditText;->e:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/alipay/android/app/widget/CustomEditText;->g:I

    .line 167
    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomEditText;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v5, v5, v0, v5}, Lcom/alipay/android/app/widget/CustomEditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 169
    :cond_1
    invoke-virtual {p0, v5, v5, v5, v5}, Lcom/alipay/android/app/widget/CustomEditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 170
    invoke-virtual {p0}, Lcom/alipay/android/app/widget/CustomEditText;->getCompoundPaddingTop()I

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 176
    invoke-virtual {p0}, Lcom/alipay/android/app/widget/CustomEditText;->hiddenPopHint()V

    .line 177
    iput-object v1, p0, Lcom/alipay/android/app/widget/CustomEditText;->b:Landroid/graphics/drawable/Drawable;

    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/widget/CustomEditText;->a:Z

    .line 179
    iput-object v1, p0, Lcom/alipay/android/app/widget/CustomEditText;->c:Lcom/alipay/android/app/widget/CustomEditText$OnIconClickListener;

    .line 180
    return-void
.end method

.method public hiddenPopHint()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomEditText;->j:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomEditText;->j:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/widget/CustomEditText;->j:Landroid/widget/PopupWindow;

    .line 144
    invoke-virtual {p0}, Lcom/alipay/android/app/widget/CustomEditText;->removeIcon()V

    .line 146
    :cond_0
    return-void
.end method

.method public onEditorAction(I)V
    .locals 1

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/widget/EditText;->onEditorAction(I)V

    .line 63
    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomEditText;->k:Lcom/alipay/android/app/widget/CustomEditText$OnDoneListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    if-ne v0, p1, :cond_0

    .line 64
    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomEditText;->k:Lcom/alipay/android/app/widget/CustomEditText$OnDoneListener;

    invoke-interface {v0}, Lcom/alipay/android/app/widget/CustomEditText$OnDoneListener;->a()V

    .line 66
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .prologue
    .line 84
    if-eqz p1, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/alipay/android/app/widget/CustomEditText;->hiddenPopHint()V

    .line 87
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/EditText;->onLayout(ZIIII)V

    .line 88
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .prologue
    .line 52
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onMeasure(II)V

    .line 53
    iget v0, p0, Lcom/alipay/android/app/widget/CustomEditText;->h:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/alipay/android/app/widget/CustomEditText;->i:I

    if-eq v0, p2, :cond_1

    .line 54
    :cond_0
    iput p1, p0, Lcom/alipay/android/app/widget/CustomEditText;->h:I

    .line 55
    iput p2, p0, Lcom/alipay/android/app/widget/CustomEditText;->i:I

    .line 56
    invoke-direct {p0}, Lcom/alipay/android/app/widget/CustomEditText;->a()V

    .line 58
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    .line 70
    iget v0, p0, Lcom/alipay/android/app/widget/CustomEditText;->d:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/android/app/widget/CustomEditText;->a:Z

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 72
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 73
    iget v2, p0, Lcom/alipay/android/app/widget/CustomEditText;->d:I

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/alipay/android/app/widget/CustomEditText;->f:I

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/alipay/android/app/widget/CustomEditText;->e:I

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/alipay/android/app/widget/CustomEditText;->g:I

    int-to-float v0, v0

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomEditText;->c:Lcom/alipay/android/app/widget/CustomEditText$OnIconClickListener;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomEditText;->c:Lcom/alipay/android/app/widget/CustomEditText$OnIconClickListener;

    iget-object v1, p0, Lcom/alipay/android/app/widget/CustomEditText;->b:Landroid/graphics/drawable/Drawable;

    invoke-interface {v0}, Lcom/alipay/android/app/widget/CustomEditText$OnIconClickListener;->h()V

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/android/app/widget/CustomEditText;->hiddenPopHint()V

    .line 79
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public removeIcon()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 149
    invoke-super {p0, v0, v0, v0, v0}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 150
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/widget/CustomEditText;->a:Z

    .line 151
    return-void
.end method

.method public setOnDoneListener(Lcom/alipay/android/app/widget/CustomEditText$OnDoneListener;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/alipay/android/app/widget/CustomEditText;->k:Lcom/alipay/android/app/widget/CustomEditText$OnDoneListener;

    .line 92
    return-void
.end method

.method public setOnIconClickListener(Landroid/graphics/drawable/Drawable;Lcom/alipay/android/app/widget/CustomEditText$OnIconClickListener;)V
    .locals 1

    .prologue
    .line 96
    if-nez p1, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/alipay/android/app/widget/CustomEditText;->dispose()V

    .line 99
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/widget/CustomEditText;->a:Z

    .line 100
    iput-object p2, p0, Lcom/alipay/android/app/widget/CustomEditText;->c:Lcom/alipay/android/app/widget/CustomEditText$OnIconClickListener;

    .line 101
    iput-object p1, p0, Lcom/alipay/android/app/widget/CustomEditText;->b:Landroid/graphics/drawable/Drawable;

    .line 102
    invoke-direct {p0}, Lcom/alipay/android/app/widget/CustomEditText;->a()V

    .line 103
    invoke-super {p0}, Landroid/widget/EditText;->invalidate()V

    .line 104
    return-void
.end method

.method public showPopHint(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x2

    const/4 v0, 0x0

    .line 107
    iget-object v1, p0, Lcom/alipay/android/app/widget/CustomEditText;->j:Landroid/widget/PopupWindow;

    if-nez v1, :cond_0

    .line 108
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/alipay/android/app/widget/CustomEditText;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alipay/android/app/widget/CustomEditText;->j:Landroid/widget/PopupWindow;

    .line 110
    :cond_0
    iget-object v1, p0, Lcom/alipay/android/app/widget/CustomEditText;->j:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 111
    iget-object v1, p0, Lcom/alipay/android/app/widget/CustomEditText;->j:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 112
    iget-object v1, p0, Lcom/alipay/android/app/widget/CustomEditText;->j:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 113
    iget-object v1, p0, Lcom/alipay/android/app/widget/CustomEditText;->j:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 114
    iget-object v1, p0, Lcom/alipay/android/app/widget/CustomEditText;->j:Landroid/widget/PopupWindow;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 115
    iget-object v1, p0, Lcom/alipay/android/app/widget/CustomEditText;->j:Landroid/widget/PopupWindow;

    invoke-virtual {v1, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 116
    const-string/jumbo v1, "msp_popup_inline_error_right"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 118
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 120
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 122
    invoke-virtual {p1, v1, v2}, Landroid/view/View;->measure(II)V

    .line 123
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 124
    invoke-virtual {p0}, Lcom/alipay/android/app/widget/CustomEditText;->getWidth()I

    move-result v1

    sub-int/2addr v1, v2

    .line 125
    invoke-virtual {p0}, Lcom/alipay/android/app/widget/CustomEditText;->getPaddingBottom()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    rsub-int/lit8 v3, v3, 0x0

    .line 126
    if-gez v1, :cond_2

    .line 129
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/android/app/widget/CustomEditText;->getWidth()I

    move-result v1

    if-le v2, v1, :cond_1

    .line 130
    const-string/jumbo v1, "msp_popup_inline_error_left"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 132
    :cond_1
    iget-object v1, p0, Lcom/alipay/android/app/widget/CustomEditText;->j:Landroid/widget/PopupWindow;

    invoke-virtual {v1, p0, v0, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 133
    invoke-virtual {p0}, Lcom/alipay/android/app/widget/CustomEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 134
    const-string/jumbo v1, "msp_edit_warning"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/widget/CustomEditText;->b:Landroid/graphics/drawable/Drawable;

    .line 135
    iput-boolean v4, p0, Lcom/alipay/android/app/widget/CustomEditText;->a:Z

    .line 136
    invoke-direct {p0}, Lcom/alipay/android/app/widget/CustomEditText;->a()V

    .line 138
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method
