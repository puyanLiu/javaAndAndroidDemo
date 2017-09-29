.class public Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;
.super Landroid/widget/EditText;

# interfaces
.implements Lcom/alipay/android/app/sys/IDispose;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText$OnDoneListener;,
        Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText$OnIconClickListener;,
        Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText$CustomOnFocusChangeListener;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText$OnIconClickListener;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Landroid/widget/PopupWindow;

.field private i:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText$OnDoneListener;

.field private j:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText$CustomOnFocusChangeListener;

.field private k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 28
    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->a:Z

    .line 31
    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->d:I

    .line 32
    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->e:I

    .line 33
    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->f:I

    .line 34
    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->g:I

    .line 38
    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->k:Z

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->a:Z

    .line 31
    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->d:I

    .line 32
    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->e:I

    .line 33
    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->f:I

    .line 34
    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->g:I

    .line 38
    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->k:Z

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->a:Z

    .line 31
    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->d:I

    .line 32
    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->e:I

    .line 33
    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->f:I

    .line 34
    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->g:I

    .line 38
    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->k:Z

    .line 69
    return-void
.end method

.method private a()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 227
    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->a:Z

    if-nez v0, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->dispose()V

    .line 244
    :goto_0
    return-void

    .line 231
    :cond_0
    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 232
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->getWidth()I

    move-result v0

    .line 233
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->getHeight()I

    move-result v1

    .line 234
    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 235
    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 236
    sub-int/2addr v0, v2

    div-int/lit8 v4, v2, 0x4

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->d:I

    .line 237
    sub-int v0, v1, v3

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->e:I

    .line 238
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->d:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->f:I

    .line 239
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->e:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->g:I

    .line 240
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v5, v5, v0, v5}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 242
    :cond_1
    invoke-virtual {p0, v5, v5, v5, v5}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 137
    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->c:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText$OnIconClickListener;

    .line 138
    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->j:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText$CustomOnFocusChangeListener;

    .line 139
    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->i:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText$OnDoneListener;

    .line 140
    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->b:Landroid/graphics/drawable/Drawable;

    .line 141
    return-void
.end method

.method public dispose()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 248
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->hiddenPopHint()V

    .line 249
    iput-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->b:Landroid/graphics/drawable/Drawable;

    .line 250
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->a:Z

    .line 251
    iput-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->c:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText$OnIconClickListener;

    .line 252
    iput-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->j:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText$CustomOnFocusChangeListener;

    .line 253
    iput-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->i:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText$OnDoneListener;

    .line 254
    return-void
.end method

.method public hiddenPopHint()V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->h:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->h:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 200
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->h:Landroid/widget/PopupWindow;

    .line 201
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->removeIcon()V

    .line 203
    :cond_0
    return-void
.end method

.method public initOnIconClickListener(Landroid/graphics/drawable/Drawable;Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText$OnIconClickListener;)V
    .locals 1

    .prologue
    .line 150
    if-nez p1, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->dispose()V

    .line 153
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->a:Z

    .line 154
    iput-object p2, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->c:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText$OnIconClickListener;

    .line 155
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->b:Landroid/graphics/drawable/Drawable;

    .line 156
    return-void
.end method

.method public justInitIconListener(Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText$OnIconClickListener;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->c:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText$OnIconClickListener;

    .line 160
    return-void
.end method

.method public onEditorAction(I)V
    .locals 1

    .prologue
    .line 85
    invoke-super {p0, p1}, Landroid/widget/EditText;->onEditorAction(I)V

    .line 86
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->i:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText$OnDoneListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    if-ne v0, p1, :cond_0

    .line 87
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->i:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText$OnDoneListener;

    invoke-interface {v0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText$OnDoneListener;->a()V

    .line 89
    :cond_0
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 45
    check-cast p1, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->showCloseIcon()V

    .line 46
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->j:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText$CustomOnFocusChangeListener;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->j:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText$CustomOnFocusChangeListener;

    invoke-interface {v0, p2}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText$CustomOnFocusChangeListener;->a(Z)V

    .line 49
    :cond_0
    return-void

    .line 45
    :cond_1
    invoke-virtual {p1}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->removeIcon()V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .prologue
    .line 114
    if-eqz p1, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->hiddenPopHint()V

    .line 117
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/EditText;->onLayout(ZIIII)V

    .line 118
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .prologue
    .line 74
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onMeasure(II)V

    .line 75
    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->a()V

    .line 76
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 93
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->hiddenPopHint()V

    .line 94
    iget v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->d:I

    if-lez v1, :cond_1

    iget-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->a:Z

    if-eqz v1, :cond_1

    .line 95
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 96
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 97
    iget v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->d:I

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_1

    iget v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->f:I

    int-to-float v3, v3

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_1

    iget v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->e:I

    int-to-float v1, v1

    cmpl-float v1, v2, v1

    if-ltz v1, :cond_1

    iget v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->g:I

    int-to-float v1, v1

    cmpg-float v1, v2, v1

    if-gtz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->c:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText$OnIconClickListener;

    if-eqz v1, :cond_1

    .line 99
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 100
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->c:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText$OnIconClickListener;

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->b:Landroid/graphics/drawable/Drawable;

    invoke-interface {v1}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText$OnIconClickListener;->a()V

    .line 108
    :cond_0
    :goto_0
    return v0

    .line 106
    :cond_1
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeIcon()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 206
    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->k:Z

    if-nez v0, :cond_0

    .line 212
    :goto_0
    return-void

    .line 209
    :cond_0
    invoke-super {p0, v1, v1, v1, v1}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 210
    iput-boolean v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->k:Z

    .line 211
    iput-boolean v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->a:Z

    goto :goto_0
.end method

.method public setCustomOnFocusChangeListener(Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText$CustomOnFocusChangeListener;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->j:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText$CustomOnFocusChangeListener;

    .line 81
    return-void
.end method

.method public setDelIconShow(Z)V
    .locals 0

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->k:Z

    .line 145
    return-void
.end method

.method public setOnDoneListener(Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText$OnDoneListener;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->i:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText$OnDoneListener;

    .line 122
    return-void
.end method

.method public setOnIconClickListener(Landroid/graphics/drawable/Drawable;Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText$OnIconClickListener;)V
    .locals 1

    .prologue
    .line 126
    if-nez p1, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->dispose()V

    .line 129
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->a:Z

    .line 130
    iput-object p2, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->c:Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText$OnIconClickListener;

    .line 131
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->b:Landroid/graphics/drawable/Drawable;

    .line 132
    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->a()V

    .line 133
    invoke-super {p0}, Landroid/widget/EditText;->invalidate()V

    .line 134
    return-void
.end method

.method public showCloseIcon()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 215
    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->k:Z

    if-eqz v0, :cond_0

    .line 224
    :goto_0
    return-void

    .line 218
    :cond_0
    iput-boolean v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->k:Z

    .line 219
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->b:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 220
    const-string/jumbo v0, "mini_icon_clean"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a(ILandroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->b:Landroid/graphics/drawable/Drawable;

    .line 222
    :cond_1
    iput-boolean v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->a:Z

    .line 223
    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->a()V

    goto :goto_0
.end method

.method public showPopHint(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x2

    const/4 v0, 0x0

    .line 164
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->h:Landroid/widget/PopupWindow;

    if-nez v1, :cond_0

    .line 165
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->h:Landroid/widget/PopupWindow;

    .line 167
    :cond_0
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->h:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 168
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->h:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 169
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->h:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 170
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->h:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 171
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->h:Landroid/widget/PopupWindow;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 172
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->h:Landroid/widget/PopupWindow;

    invoke-virtual {v1, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 173
    const-string/jumbo v1, "msp_popup_inline_error_right"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 175
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 177
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 179
    invoke-virtual {p1, v1, v2}, Landroid/view/View;->measure(II)V

    .line 180
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 181
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->getWidth()I

    move-result v1

    sub-int/2addr v1, v2

    .line 182
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->getPaddingBottom()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    rsub-int/lit8 v3, v3, 0x0

    .line 183
    if-gez v1, :cond_2

    .line 186
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->getWidth()I

    move-result v1

    if-le v2, v1, :cond_1

    .line 187
    const-string/jumbo v1, "msp_popup_inline_error_left"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 189
    :cond_1
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->h:Landroid/widget/PopupWindow;

    invoke-virtual {v1, p0, v0, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 190
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 191
    const-string/jumbo v1, "msp_edit_warning"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1, v0}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a(ILandroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->b:Landroid/graphics/drawable/Drawable;

    .line 192
    iput-boolean v4, p0, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->a:Z

    .line 193
    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomEditText;->a()V

    .line 195
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method
