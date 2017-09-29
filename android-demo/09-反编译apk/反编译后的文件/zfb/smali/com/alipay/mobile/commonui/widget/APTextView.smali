.class public Lcom/alipay/mobile/commonui/widget/APTextView;
.super Landroid/widget/TextView;

# interfaces
.implements Lcom/alipay/mobile/commonui/widget/APViewInterface;


# instance fields
.field private a:Z

.field private b:I

.field private c:I

.field private d:I

.field private e:Lcom/alipay/mobile/commonui/widget/APTextView$OnTextViewTextChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APTextView;->b:I

    const/16 v0, 0x270f

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APTextView;->d:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APTextView;->b:I

    const/16 v0, 0x270f

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APTextView;->d:I

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APTextView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APTextView;->b:I

    const/16 v0, 0x270f

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APTextView;->d:I

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APTextView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a()I
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    const-class v2, Landroid/widget/TextView;

    const-string/jumbo v3, "mSingleLine"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :try_start_1
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v1

    if-eqz v1, :cond_0

    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    :cond_1
    :goto_2
    const/4 v0, -0x1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v2

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/alipay/mobile/ui/R$styleable;->emojiAttr:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/mobile/commonui/widget/APTextView;->a:Z

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APTextView;->b:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getOnTextChangeListener()Lcom/alipay/mobile/commonui/widget/APTextView$OnTextViewTextChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTextView;->e:Lcom/alipay/mobile/commonui/widget/APTextView$OnTextViewTextChangeListener;

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    const/16 v5, 0x270f

    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/APTextView;->a:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APTextView;->c:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APTextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/alipay/mobile/commonui/widget/APTextView;->a()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sub-int v0, p4, p2

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APTextView;->getLeftPaddingOffset()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APTextView;->getRightPaddingOffset()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/APTextView;->d:I

    if-eq v1, v5, :cond_2

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/APTextView;->d:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APTextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-le v1, v3, :cond_3

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/APTextView;->d:I

    if-ne v1, v5, :cond_4

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APTextView;->d:I

    :cond_3
    :goto_1
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    iget v1, p0, Lcom/alipay/mobile/commonui/widget/APTextView;->d:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APTextView;->d:I

    goto :goto_1
.end method

.method public setEmojiSize(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobile/commonui/widget/APTextView;->b:I

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    invoke-static {p1}, Lcom/alipay/mobile/commonui/widget/APViewEventHelper;->wrapClickListener(Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnTextChangeListener(Lcom/alipay/mobile/commonui/widget/APTextView$OnTextViewTextChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APTextView;->e:Lcom/alipay/mobile/commonui/widget/APTextView$OnTextViewTextChangeListener;

    return-void
.end method

.method public setSupportEmoji(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/commonui/widget/APTextView;->a:Z

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 4

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/APTextView;->a:Z

    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    instance-of v0, p1, Landroid/text/SpannableStringBuilder;

    if-nez v0, :cond_0

    instance-of v0, p1, Landroid/text/SpannableString;

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/emoji/EmojiUtil;->ubb2utf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APTextView;->b:I

    if-gtz v0, :cond_2

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APTextView;->getTextSize()F

    move-result v0

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x8

    :goto_0
    invoke-static {v2, v1, v0}, Lcom/alipay/mobile/common/emoji/APEmojiRender;->renderEmojiReturncount(Landroid/content/Context;Landroid/text/Spannable;I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APTextView;->c:I

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APTextView;->c:I

    if-lez v0, :cond_4

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APTextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/alipay/mobile/commonui/widget/APTextView;->a()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget v2, p0, Lcom/alipay/mobile/commonui/widget/APTextView;->d:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APTextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-super {p0, v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTextView;->e:Lcom/alipay/mobile/commonui/widget/APTextView$OnTextViewTextChangeListener;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTextView;->e:Lcom/alipay/mobile/commonui/widget/APTextView$OnTextViewTextChangeListener;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView$OnTextViewTextChangeListener;->onTextViewTextChange(Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_1
    :goto_2
    return-void

    :cond_2
    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APTextView;->b:I

    goto :goto_0

    :cond_3
    invoke-super {p0, v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto :goto_1

    :cond_4
    invoke-super {p0, v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto :goto_1

    :cond_5
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTextView;->e:Lcom/alipay/mobile/commonui/widget/APTextView$OnTextViewTextChangeListener;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APTextView;->e:Lcom/alipay/mobile/commonui/widget/APTextView$OnTextViewTextChangeListener;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView$OnTextViewTextChangeListener;->onTextViewTextChange(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_2
.end method
