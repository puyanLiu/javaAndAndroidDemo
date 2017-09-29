.class public Lcom/alipay/mobile/personalbase/view/CustomBladeView;
.super Landroid/view/View;
.source "CustomBladeView.java"

# interfaces
.implements Lcom/alipay/mobile/commonui/widget/APViewInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/personalbase/view/CustomBladeView$OnItemClickListener;
    }
.end annotation


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private b:Landroid/graphics/drawable/Drawable;

.field private c:Landroid/graphics/drawable/Drawable;

.field protected choose:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Lcom/alipay/mobile/personalbase/view/CustomBladeView$OnItemClickListener;

.field private h:[Ljava/lang/String;

.field protected paint:Landroid/graphics/Paint;

.field protected showBkg:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 21
    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 22
    const-string/jumbo v2, "A"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "B"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "C"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "D"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "F"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "G"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 23
    const-string/jumbo v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    .line 24
    const-string/jumbo v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "#"

    aput-object v2, v0, v1

    .line 21
    sput-object v0, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->a:[Ljava/lang/String;

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 48
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 26
    iput-boolean v1, p0, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->showBkg:Z

    .line 27
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->paint:Landroid/graphics/Paint;

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->choose:I

    .line 29
    iput-object v2, p0, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->b:Landroid/graphics/drawable/Drawable;

    .line 30
    iput-object v2, p0, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->c:Landroid/graphics/drawable/Drawable;

    .line 31
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->d:Ljava/lang/String;

    .line 32
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->e:Ljava/lang/String;

    .line 33
    iput-boolean v1, p0, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->f:Z

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    iput-boolean v1, p0, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->showBkg:Z

    .line 27
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->paint:Landroid/graphics/Paint;

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->choose:I

    .line 29
    iput-object v2, p0, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->b:Landroid/graphics/drawable/Drawable;

    .line 30
    iput-object v2, p0, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->c:Landroid/graphics/drawable/Drawable;

    .line 31
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->d:Ljava/lang/String;

    .line 32
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->e:Ljava/lang/String;

    .line 33
    iput-boolean v1, p0, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->f:Z

    .line 44
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->init(Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    iput-boolean v1, p0, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->showBkg:Z

    .line 27
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->paint:Landroid/graphics/Paint;

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->choose:I

    .line 29
    iput-object v2, p0, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->b:Landroid/graphics/drawable/Drawable;

    .line 30
    iput-object v2, p0, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->c:Landroid/graphics/drawable/Drawable;

    .line 31
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->d:Ljava/lang/String;

    .line 32
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->e:Ljava/lang/String;

    .line 33
    iput-boolean v1, p0, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->f:Z

    .line 39
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->init(Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method private a(I)V
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->g:Lcom/alipay/mobile/personalbase/view/CustomBladeView$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {p0}, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->getLetters()[Ljava/lang/String;

    move-result-object v0

    .line 215
    iget-object v1, p0, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->g:Lcom/alipay/mobile/personalbase/view/CustomBladeView$OnItemClickListener;

    aget-object v0, v0, p1

    invoke-interface {v1, v0}, Lcom/alipay/mobile/personalbase/view/CustomBladeView$OnItemClickListener;->onItemClick(Ljava/lang/String;)V

    .line 217
    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 158
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 159
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 160
    iget v2, p0, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->choose:I

    .line 161
    invoke-virtual {p0}, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->getLetters()[Ljava/lang/String;

    move-result-object v3

    .line 163
    array-length v3, v3

    .line 165
    invoke-virtual {p0}, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v1, v4

    int-to-float v4, v3

    mul-float/2addr v1, v4

    float-to-int v1, v1

    .line 167
    packed-switch v0, :pswitch_data_0

    .line 197
    :cond_0
    :goto_0
    return v5

    .line 169
    :pswitch_0
    iput-boolean v5, p0, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->showBkg:Z

    .line 170
    if-eq v2, v1, :cond_0

    .line 171
    if-ltz v1, :cond_0

    if-ge v1, v3, :cond_0

    .line 172
    invoke-direct {p0, v1}, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->a(I)V

    .line 173
    iput v1, p0, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->choose:I

    .line 194
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->invalidate()V

    goto :goto_0

    .line 180
    :pswitch_1
    if-eq v2, v1, :cond_0

    .line 181
    if-ltz v1, :cond_0

    if-ge v1, v3, :cond_0

    .line 182
    invoke-direct {p0, v1}, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->a(I)V

    .line 183
    iput v1, p0, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->choose:I

    goto :goto_1

    .line 189
    :pswitch_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->showBkg:Z

    .line 190
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->choose:I

    .line 191
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->g:Lcom/alipay/mobile/personalbase/view/CustomBladeView$OnItemClickListener;

    if-eqz v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->g:Lcom/alipay/mobile/personalbase/view/CustomBladeView$OnItemClickListener;

    invoke-interface {v0}, Lcom/alipay/mobile/personalbase/view/CustomBladeView$OnItemClickListener;->onClickUp()V

    goto :goto_1

    .line 167
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected getLetters()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->h:[Ljava/lang/String;

    return-object v0
.end method

.method protected init(Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 52
    if-eqz p1, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/personalbase/R$styleable;->a:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 54
    invoke-virtual {v1, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->f:Z

    .line 55
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->b:Landroid/graphics/drawable/Drawable;

    .line 56
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->c:Landroid/graphics/drawable/Drawable;

    .line 57
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->d:Ljava/lang/String;

    .line 58
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->e:Ljava/lang/String;

    .line 60
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 61
    sget-object v1, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->a:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->h:[Ljava/lang/String;

    .line 62
    iget-object v1, p0, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->h:[Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->d:Ljava/lang/String;

    aput-object v2, v1, v0

    .line 63
    :goto_0
    sget-object v1, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->a:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_2

    .line 76
    :cond_1
    :goto_1
    return-void

    .line 64
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->h:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    sget-object v3, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->a:[Ljava/lang/String;

    aget-object v3, v3, v0

    aput-object v3, v1, v2

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    :cond_3
    iget-object v1, p0, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 67
    :cond_4
    sget-object v1, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->a:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->h:[Ljava/lang/String;

    .line 68
    iget-object v1, p0, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->h:[Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->d:Ljava/lang/String;

    aput-object v2, v1, v0

    .line 69
    iget-object v1, p0, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->h:[Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->e:Ljava/lang/String;

    aput-object v2, v1, v3

    .line 70
    :goto_2
    sget-object v1, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->a:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 71
    iget-object v1, p0, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->h:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x2

    sget-object v3, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->a:[Ljava/lang/String;

    aget-object v3, v3, v0

    aput-object v3, v1, v2

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 74
    :cond_5
    sget-object v0, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->a:[Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->h:[Ljava/lang/String;

    goto :goto_1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .prologue
    const/high16 v12, 0x40000000    # 2.0f

    const/4 v11, 0x0

    const/4 v3, 0x0

    .line 84
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 85
    iget-boolean v0, p0, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->showBkg:Z

    if-eqz v0, :cond_0

    .line 86
    const-string/jumbo v0, "#44000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 88
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->getLetters()[Ljava/lang/String;

    move-result-object v4

    .line 90
    invoke-virtual {p0}, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->getHeight()I

    move-result v0

    add-int/lit8 v5, v0, -0x28

    .line 91
    invoke-virtual {p0}, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->getWidth()I

    move-result v6

    .line 92
    array-length v7, v4

    .line 94
    div-int v8, v5, v7

    move v2, v3

    .line 96
    :goto_0
    if-lt v2, v7, :cond_1

    .line 153
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    .line 154
    return-void

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->paint:Landroid/graphics/Paint;

    const-string/jumbo v1, "#565656"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 98
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 99
    const/16 v0, 0x190

    if-ge v5, v0, :cond_3

    .line 100
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 101
    sget v9, Lcom/alipay/mobile/ui/R$dimen;->letters_item_little_fontsize:I

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 100
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 105
    :goto_1
    iget v0, p0, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->choose:I

    if-ne v2, v0, :cond_2

    .line 106
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->paint:Landroid/graphics/Paint;

    const-string/jumbo v1, "#565656"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 109
    :cond_2
    if-nez v2, :cond_7

    .line 111
    iget-boolean v0, p0, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->f:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    .line 113
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 114
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->c:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 124
    :goto_2
    div-int/lit8 v1, v6, 0x2

    int-to-float v1, v1

    div-float/2addr v0, v12

    sub-float v0, v1, v0

    move v1, v0

    .line 129
    :goto_3
    mul-int v0, v8, v2

    add-int/2addr v0, v8

    int-to-float v0, v0

    .line 131
    if-nez v2, :cond_c

    .line 132
    iget-boolean v9, p0, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->f:Z

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_a

    .line 133
    iget v0, p0, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->choose:I

    if-nez v0, :cond_9

    .line 134
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->c:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v9, p0, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v11, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 96
    :goto_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    .line 103
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v9, Lcom/alipay/mobile/ui/R$dimen;->letters_item_fontsize:I

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_1

    .line 116
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->b:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    goto :goto_2

    .line 118
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 119
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    goto :goto_2

    .line 121
    :cond_6
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->paint:Landroid/graphics/Paint;

    aget-object v1, v4, v3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    goto :goto_2

    .line 126
    :cond_7
    div-int/lit8 v0, v6, 0x2

    int-to-float v1, v0

    iget-object v9, p0, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->paint:Landroid/graphics/Paint;

    array-length v0, v4

    if-ne v7, v0, :cond_8

    aget-object v0, v4, v2

    :goto_5
    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    div-float/2addr v0, v12

    sub-float v0, v1, v0

    move v1, v0

    goto :goto_3

    :cond_8
    add-int/lit8 v0, v2, -0x1

    aget-object v0, v4, v0

    goto :goto_5

    .line 136
    :cond_9
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->b:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v9, p0, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v11, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_4

    .line 139
    :cond_a
    iget-object v9, p0, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->d:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_b

    .line 140
    iget-object v9, p0, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->d:Ljava/lang/String;

    iget-object v10, p0, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v1, v0, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_4

    .line 142
    :cond_b
    aget-object v9, v4, v3

    iget-object v10, p0, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v1, v0, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_4

    .line 146
    :cond_c
    array-length v9, v4

    if-ne v7, v9, :cond_d

    .line 147
    aget-object v9, v4, v2

    iget-object v10, p0, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v1, v0, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_4

    .line 149
    :cond_d
    add-int/lit8 v9, v2, -0x1

    aget-object v9, v4, v9

    iget-object v10, p0, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v1, v0, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_4
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 202
    :try_start_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 205
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setOnItemClickListener(Lcom/alipay/mobile/personalbase/view/CustomBladeView$OnItemClickListener;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcom/alipay/mobile/personalbase/view/CustomBladeView;->g:Lcom/alipay/mobile/personalbase/view/CustomBladeView$OnItemClickListener;

    .line 210
    return-void
.end method
