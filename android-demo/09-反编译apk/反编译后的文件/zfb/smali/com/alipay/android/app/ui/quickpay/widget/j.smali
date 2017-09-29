.class final Lcom/alipay/android/app/ui/quickpay/widget/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field a:I

.field b:I

.field c:Z

.field d:I

.field e:I

.field f:Z

.field final synthetic g:Lcom/alipay/android/app/ui/quickpay/widget/FormatBankcard;

.field private h:[C

.field private i:Ljava/lang/StringBuffer;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/widget/FormatBankcard;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/j;->g:Lcom/alipay/android/app/ui/quickpay/widget/FormatBankcard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/j;->a:I

    .line 32
    iput v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/j;->b:I

    .line 33
    iput-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/j;->c:Z

    .line 34
    iput v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/j;->d:I

    .line 36
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/j;->i:Ljava/lang/StringBuffer;

    .line 37
    iput v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/j;->e:I

    .line 38
    iput-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/j;->f:Z

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 6

    .prologue
    const/16 v5, 0x20

    const/4 v1, 0x0

    .line 75
    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/j;->c:Z

    if-eqz v0, :cond_9

    .line 76
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/j;->g:Lcom/alipay/android/app/ui/quickpay/widget/FormatBankcard;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/widget/FormatBankcard;->b(Lcom/alipay/android/app/ui/quickpay/widget/FormatBankcard;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/j;->d:I

    move v0, v1

    .line 78
    :goto_0
    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/j;->i:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 79
    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/j;->i:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_0

    .line 80
    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/j;->i:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 82
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/j;->g:Lcom/alipay/android/app/ui/quickpay/widget/FormatBankcard;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/widget/FormatBankcard;->a(Lcom/alipay/android/app/ui/quickpay/widget/FormatBankcard;)I

    move-result v0

    add-int/lit8 v3, v0, 0x1

    move v0, v1

    move v2, v1

    .line 89
    :goto_1
    iget-object v4, p0, Lcom/alipay/android/app/ui/quickpay/widget/j;->i:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 90
    iget-object v4, p0, Lcom/alipay/android/app/ui/quickpay/widget/j;->g:Lcom/alipay/android/app/ui/quickpay/widget/FormatBankcard;

    invoke-static {v4}, Lcom/alipay/android/app/ui/quickpay/widget/FormatBankcard;->a(Lcom/alipay/android/app/ui/quickpay/widget/FormatBankcard;)I

    move-result v4

    if-eq v2, v4, :cond_2

    iget-object v4, p0, Lcom/alipay/android/app/ui/quickpay/widget/j;->g:Lcom/alipay/android/app/ui/quickpay/widget/FormatBankcard;

    invoke-static {v4}, Lcom/alipay/android/app/ui/quickpay/widget/FormatBankcard;->a(Lcom/alipay/android/app/ui/quickpay/widget/FormatBankcard;)I

    move-result v4

    sub-int v4, v2, v4

    rem-int/2addr v4, v3

    if-nez v4, :cond_3

    .line 91
    :cond_2
    iget-object v4, p0, Lcom/alipay/android/app/ui/quickpay/widget/j;->i:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v2, v5}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 93
    add-int/lit8 v0, v0, 0x1

    .line 95
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 98
    :cond_4
    iget v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/j;->e:I

    if-le v0, v2, :cond_a

    .line 99
    iget v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/j;->d:I

    if-lez v2, :cond_5

    iget v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/j;->d:I

    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/j;->g:Lcom/alipay/android/app/ui/quickpay/widget/FormatBankcard;

    invoke-static {v3}, Lcom/alipay/android/app/ui/quickpay/widget/FormatBankcard;->a(Lcom/alipay/android/app/ui/quickpay/widget/FormatBankcard;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    rem-int/2addr v2, v3

    if-eqz v2, :cond_6

    :cond_5
    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/j;->i:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    iget v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/j;->d:I

    add-int/2addr v3, v0

    if-ne v2, v3, :cond_7

    .line 102
    :cond_6
    iget v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/j;->d:I

    iget v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/j;->e:I

    sub-int/2addr v0, v3

    add-int/2addr v0, v2

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/j;->d:I

    .line 109
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/j;->i:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/j;->h:[C

    .line 110
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/j;->i:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/j;->i:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/j;->h:[C

    invoke-virtual {v0, v1, v2, v3, v1}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    .line 111
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/j;->i:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    iget v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/j;->d:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_b

    .line 113
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/j;->d:I

    .line 118
    :cond_8
    :goto_3
    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/j;->g:Lcom/alipay/android/app/ui/quickpay/widget/FormatBankcard;

    invoke-static {v1}, Lcom/alipay/android/app/ui/quickpay/widget/FormatBankcard;->b(Lcom/alipay/android/app/ui/quickpay/widget/FormatBankcard;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/j;->g:Lcom/alipay/android/app/ui/quickpay/widget/FormatBankcard;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/widget/FormatBankcard;->b(Lcom/alipay/android/app/ui/quickpay/widget/FormatBankcard;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 120
    iget v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/j;->d:I

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/j;->c:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :cond_9
    :goto_4
    return-void

    .line 104
    :cond_a
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/j;->d:I

    if-lez v0, :cond_7

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/j;->d:I

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/j;->g:Lcom/alipay/android/app/ui/quickpay/widget/FormatBankcard;

    invoke-static {v2}, Lcom/alipay/android/app/ui/quickpay/widget/FormatBankcard;->a(Lcom/alipay/android/app/ui/quickpay/widget/FormatBankcard;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    rem-int/2addr v0, v2

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/j;->f:Z

    if-nez v0, :cond_7

    .line 106
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/j;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/j;->d:I

    goto :goto_2

    .line 114
    :cond_b
    iget v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/j;->d:I

    if-gez v2, :cond_8

    .line 115
    iput v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/j;->d:I

    goto :goto_3

    .line 122
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_4
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 43
    if-lez p3, :cond_2

    .line 44
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/j;->f:Z

    .line 48
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iput v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/j;->a:I

    .line 49
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/j;->i:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 50
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/j;->i:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/j;->i:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 52
    :cond_0
    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/j;->e:I

    .line 53
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 54
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_1

    .line 55
    iget v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/j;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/j;->e:I

    .line 53
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 46
    :cond_2
    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/j;->f:Z

    goto :goto_0

    .line 58
    :cond_3
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    .line 63
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/j;->b:I

    .line 64
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/j;->i:Ljava/lang/StringBuffer;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/j;->b:I

    iget v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/j;->a:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/j;->b:I

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/j;->g:Lcom/alipay/android/app/ui/quickpay/widget/FormatBankcard;

    invoke-static {v1}, Lcom/alipay/android/app/ui/quickpay/widget/FormatBankcard;->a(Lcom/alipay/android/app/ui/quickpay/widget/FormatBankcard;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/j;->c:Z

    if-eqz v0, :cond_1

    .line 67
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/j;->c:Z

    .line 71
    :goto_0
    return-void

    .line 70
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/j;->c:Z

    goto :goto_0
.end method
