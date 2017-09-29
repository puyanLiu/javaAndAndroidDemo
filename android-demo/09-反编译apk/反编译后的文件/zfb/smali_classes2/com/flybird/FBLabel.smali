.class public Lcom/flybird/FBLabel;
.super Lcom/flybird/FBView;
.source "FBLabel.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RtlHardcoded"
    }
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field public mTextStr:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Z

.field private p:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/flybird/FBDocument;)V
    .locals 2

    .prologue
    .line 39
    if-nez p2, :cond_0

    new-instance p2, Lcom/flybird/FBBorderText;

    invoke-direct {p2, p1}, Lcom/flybird/FBBorderText;-><init>(Landroid/content/Context;)V

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/flybird/FBView;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/flybird/FBDocument;)V

    .line 21
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/flybird/FBLabel;->b:Ljava/lang/String;

    .line 22
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/flybird/FBLabel;->k:Ljava/lang/String;

    .line 24
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/flybird/FBLabel;->l:Ljava/lang/String;

    .line 25
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/flybird/FBLabel;->m:Ljava/lang/String;

    .line 26
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/flybird/FBLabel;->n:Ljava/lang/String;

    .line 27
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/flybird/FBLabel;->mTextStr:Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flybird/FBLabel;->o:Z

    .line 29
    const-string/jumbo v0, "#333333"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/flybird/FBLabel;->p:I

    .line 40
    iget-object v0, p0, Lcom/flybird/FBLabel;->mView:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/flybird/FBLabel;->a:Landroid/widget/TextView;

    .line 41
    iget-object v0, p0, Lcom/flybird/FBLabel;->a:Landroid/widget/TextView;

    iget v1, p0, Lcom/flybird/FBLabel;->p:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 42
    return-void
.end method

.method static synthetic a(Lcom/flybird/FBLabel;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/flybird/FBLabel;->a:Landroid/widget/TextView;

    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 45
    iget-object v0, p0, Lcom/flybird/FBLabel;->k:Ljava/lang/String;

    const-string/jumbo v1, "hidden"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/flybird/FBLabel;->b:Ljava/lang/String;

    const-string/jumbo v1, "ellipsis"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    iget-object v0, p0, Lcom/flybird/FBLabel;->a:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/flybird/FBLabel;->b:Ljava/lang/String;

    const-string/jumbo v1, "marquee"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/flybird/FBLabel;->a:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 50
    iget-object v0, p0, Lcom/flybird/FBLabel;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 51
    iget-object v0, p0, Lcom/flybird/FBLabel;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 52
    iget-object v0, p0, Lcom/flybird/FBLabel;->a:Landroid/widget/TextView;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 53
    iget-object v0, p0, Lcom/flybird/FBLabel;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 54
    iget-object v0, p0, Lcom/flybird/FBLabel;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    goto :goto_0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/flybird/FBLabel;->m:Ljava/lang/String;

    const-string/jumbo v1, "vertical"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBLabel;->n:Ljava/lang/String;

    const-string/jumbo v1, "-webkit-box"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/flybird/FBLabel;->l:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/flybird/FBLabel;->l:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 63
    iget-object v1, p0, Lcom/flybird/FBLabel;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 64
    iget-object v0, p0, Lcom/flybird/FBLabel;->a:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/flybird/FBLabel;->a:Landroid/widget/TextView;

    const v1, 0x186a0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 67
    iget-object v0, p0, Lcom/flybird/FBLabel;->a:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0
.end method


# virtual methods
.method public doDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 197
    invoke-super {p0}, Lcom/flybird/FBView;->doDestroy()V

    .line 198
    iput-object v0, p0, Lcom/flybird/FBLabel;->e:Lcom/flybird/FBDocument;

    .line 199
    iput-object v0, p0, Lcom/flybird/FBLabel;->a:Landroid/widget/TextView;

    .line 200
    return-void
.end method

.method public initText()V
    .locals 3

    .prologue
    .line 174
    iget-object v0, p0, Lcom/flybird/FBLabel;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 175
    const-string/jumbo v1, "undefined"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    iget-boolean v0, p0, Lcom/flybird/FBLabel;->o:Z

    invoke-virtual {p0, v0}, Lcom/flybird/FBLabel;->setSupportEmoji(Z)V

    .line 177
    iget-object v0, p0, Lcom/flybird/FBLabel;->mTextStr:Ljava/lang/String;

    const-string/jumbo v1, "<font"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 178
    iget-object v1, p0, Lcom/flybird/FBLabel;->a:Landroid/widget/TextView;

    .line 179
    iget-object v0, p0, Lcom/flybird/FBLabel;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/flybird/FBTools;->getDp(Landroid/app/Activity;)F

    move-result v0

    iget-object v2, p0, Lcom/flybird/FBLabel;->mTextStr:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/alipay/tag/html/Html;->fromHtml(FLjava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    .line 178
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/flybird/FBLabel;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/flybird/FBLabel;->mTextStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onLoadFinish()V
    .locals 4

    .prologue
    .line 144
    invoke-super {p0}, Lcom/flybird/FBView;->onLoadFinish()V

    .line 145
    invoke-virtual {p0}, Lcom/flybird/FBLabel;->initText()V

    .line 146
    iget-object v0, p0, Lcom/flybird/FBLabel;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "marquee"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/flybird/FBLabel;->a:Landroid/widget/TextView;

    new-instance v1, Lcom/flybird/FBLabel$1;

    invoke-direct {v1, p0}, Lcom/flybird/FBLabel$1;-><init>(Lcom/flybird/FBLabel;)V

    .line 157
    const-wide/16 v2, 0x64

    .line 147
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 159
    :cond_0
    return-void
.end method

.method public setSupportEmoji(Z)V
    .locals 2

    .prologue
    .line 188
    iput-boolean p1, p0, Lcom/flybird/FBLabel;->o:Z

    .line 189
    iget-object v0, p0, Lcom/flybird/FBLabel;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBLabel;->a:Landroid/widget/TextView;

    instance-of v0, v0, Lcom/flybird/FBBorderText;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/flybird/FBLabel;->a:Landroid/widget/TextView;

    check-cast v0, Lcom/flybird/FBBorderText;

    .line 191
    iget-boolean v1, p0, Lcom/flybird/FBLabel;->o:Z

    invoke-virtual {v0, v1}, Lcom/flybird/FBBorderText;->setSupportEmoji(Z)V

    .line 193
    :cond_0
    return-void
.end method

.method public updateAttr(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 162
    invoke-super {p0, p1, p2}, Lcom/flybird/FBView;->updateAttr(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string/jumbo v0, "text"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    iput-object p2, p0, Lcom/flybird/FBLabel;->mTextStr:Ljava/lang/String;

    .line 165
    iget-object v0, p0, Lcom/flybird/FBLabel;->e:Lcom/flybird/FBDocument;

    invoke-virtual {v0}, Lcom/flybird/FBDocument;->isOnloadFinish()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/flybird/FBLabel;->initText()V

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    const-string/jumbo v0, "emoji"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/flybird/FBLabel;->o:Z

    goto :goto_0
.end method

.method public updateCSS(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 74
    const-string/jumbo v0, "font-size"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    const-string/jumbo v0, "px"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 77
    iget-object v1, p0, Lcom/flybird/FBLabel;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    const-string/jumbo v0, "color"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 79
    iget-object v0, p0, Lcom/flybird/FBLabel;->a:Landroid/widget/TextView;

    invoke-static {p2}, Lcom/flybird/FBTools;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 83
    :cond_2
    const-string/jumbo v0, "text-overflow"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 84
    iput-object p2, p0, Lcom/flybird/FBLabel;->b:Ljava/lang/String;

    .line 85
    invoke-direct {p0}, Lcom/flybird/FBLabel;->a()V

    goto :goto_0

    .line 86
    :cond_3
    const-string/jumbo v0, "overflow"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 87
    iput-object p2, p0, Lcom/flybird/FBLabel;->k:Ljava/lang/String;

    .line 88
    invoke-direct {p0}, Lcom/flybird/FBLabel;->a()V

    goto :goto_0

    .line 89
    :cond_4
    const-string/jumbo v0, "white-space"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 90
    const-string/jumbo v0, "nowrap"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 91
    iget-object v0, p0, Lcom/flybird/FBLabel;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    goto :goto_0

    .line 93
    :cond_5
    iget-object v0, p0, Lcom/flybird/FBLabel;->a:Landroid/widget/TextView;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_0

    .line 99
    :cond_6
    const-string/jumbo v0, "-webkit-line-clamp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 100
    iput-object p2, p0, Lcom/flybird/FBLabel;->l:Ljava/lang/String;

    .line 101
    invoke-direct {p0}, Lcom/flybird/FBLabel;->b()V

    goto :goto_0

    .line 102
    :cond_7
    const-string/jumbo v0, "-webkit-box-orient"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 103
    iput-object p2, p0, Lcom/flybird/FBLabel;->m:Ljava/lang/String;

    .line 104
    invoke-direct {p0}, Lcom/flybird/FBLabel;->b()V

    goto :goto_0

    .line 105
    :cond_8
    const-string/jumbo v0, "display"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 106
    iput-object p2, p0, Lcom/flybird/FBLabel;->n:Ljava/lang/String;

    .line 107
    invoke-direct {p0}, Lcom/flybird/FBLabel;->b()V

    goto :goto_0

    .line 108
    :cond_9
    const-string/jumbo v0, "text-align"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 109
    const-string/jumbo v0, "center"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 110
    iget-object v0, p0, Lcom/flybird/FBLabel;->a:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_0

    .line 111
    :cond_a
    const-string/jumbo v0, "right"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 112
    iget-object v0, p0, Lcom/flybird/FBLabel;->a:Landroid/widget/TextView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_0

    .line 114
    :cond_b
    iget-object v0, p0, Lcom/flybird/FBLabel;->a:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_0

    .line 116
    :cond_c
    const-string/jumbo v0, "font-weight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 117
    const-string/jumbo v0, "bold"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 118
    iget-object v0, p0, Lcom/flybird/FBLabel;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    goto/16 :goto_0

    .line 120
    :cond_d
    iget-object v0, p0, Lcom/flybird/FBLabel;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    goto/16 :goto_0

    .line 122
    :cond_e
    const-string/jumbo v0, "line-height"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 123
    const-string/jumbo v0, "px"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 125
    iget-object v1, p0, Lcom/flybird/FBLabel;->a:Landroid/widget/TextView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    goto/16 :goto_0

    .line 126
    :cond_f
    const-string/jumbo v0, "text-decoration"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 127
    const-string/jumbo v0, "line-through"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 128
    iget-object v0, p0, Lcom/flybird/FBLabel;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 129
    iget-object v1, p0, Lcom/flybird/FBLabel;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x10

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFlags(I)V

    goto/16 :goto_0

    .line 130
    :cond_10
    const-string/jumbo v0, "underline"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/flybird/FBLabel;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 132
    iget-object v1, p0, Lcom/flybird/FBLabel;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFlags(I)V

    goto/16 :goto_0

    .line 138
    :cond_11
    invoke-super {p0, p1, p2}, Lcom/flybird/FBView;->updateCSS(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
