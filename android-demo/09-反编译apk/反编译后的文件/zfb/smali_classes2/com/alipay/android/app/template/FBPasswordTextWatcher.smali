.class public Lcom/alipay/android/app/template/FBPasswordTextWatcher;
.super Ljava/lang/Object;
.source "FBPasswordTextWatcher.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private a:Z

.field private b:Lcom/flybird/FBInput;

.field private c:Landroid/widget/EditText;

.field private d:I


# direct methods
.method public constructor <init>(Lcom/flybird/FBInput;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/template/FBPasswordTextWatcher;->a:Z

    .line 13
    iput-object v1, p0, Lcom/alipay/android/app/template/FBPasswordTextWatcher;->b:Lcom/flybird/FBInput;

    .line 14
    iput-object v1, p0, Lcom/alipay/android/app/template/FBPasswordTextWatcher;->c:Landroid/widget/EditText;

    .line 15
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/android/app/template/FBPasswordTextWatcher;->d:I

    .line 18
    iput-object p1, p0, Lcom/alipay/android/app/template/FBPasswordTextWatcher;->b:Lcom/flybird/FBInput;

    .line 19
    iget-object v0, p1, Lcom/flybird/FBInput;->mView:Landroid/view/View;

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/alipay/android/app/template/FBPasswordTextWatcher;->c:Landroid/widget/EditText;

    .line 20
    iget-object v0, p0, Lcom/alipay/android/app/template/FBPasswordTextWatcher;->b:Lcom/flybird/FBInput;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/template/FBPasswordTextWatcher;->d:I

    .line 21
    return-void
.end method

.method private static a(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 25
    const-string/jumbo v1, ""

    move v2, v0

    .line 27
    :goto_0
    if-lt v2, v3, :cond_1

    .line 42
    if-eqz v0, :cond_0

    .line 43
    const-string/jumbo v1, ""

    .line 45
    :cond_0
    return-object v1

    .line 28
    :cond_1
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 29
    invoke-static {v4}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v5

    .line 30
    const/16 v6, 0xf7

    if-eq v4, v6, :cond_2

    const v6, 0xffe5

    if-eq v4, v6, :cond_2

    sget-object v6, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v5, v6, :cond_2

    .line 31
    sget-object v6, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v5, v6, :cond_2

    .line 32
    sget-object v6, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:Ljava/lang/Character$UnicodeBlock;

    if-eq v5, v6, :cond_2

    .line 33
    sget-object v6, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_B:Ljava/lang/Character$UnicodeBlock;

    if-eq v5, v6, :cond_2

    .line 34
    sget-object v6, Ljava/lang/Character$UnicodeBlock;->CJK_SYMBOLS_AND_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq v5, v6, :cond_2

    .line 35
    sget-object v6, Ljava/lang/Character$UnicodeBlock;->HALFWIDTH_AND_FULLWIDTH_FORMS:Ljava/lang/Character$UnicodeBlock;

    if-eq v5, v6, :cond_2

    .line 36
    sget-object v6, Ljava/lang/Character$UnicodeBlock;->GENERAL_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-ne v5, v6, :cond_3

    .line 37
    :cond_2
    const/4 v0, 0x1

    .line 27
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 39
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    .prologue
    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/template/FBPasswordTextWatcher;->b:Lcom/flybird/FBInput;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/template/FBPasswordTextWatcher;->c:Landroid/widget/EditText;

    if-nez v0, :cond_1

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    invoke-static {p1}, Lcom/alipay/android/app/template/FBPasswordTextWatcher;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/alipay/android/app/template/FBPasswordTextWatcher;->c:Landroid/widget/EditText;

    if-eqz v1, :cond_2

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 56
    iget-object v1, p0, Lcom/alipay/android/app/template/FBPasswordTextWatcher;->c:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    goto :goto_0

    .line 59
    :cond_2
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    .line 60
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_0

    .line 61
    invoke-interface {p1, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    const/16 v3, 0x2a

    if-eq v2, v3, :cond_3

    .line 62
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/alipay/android/app/template/FBPasswordTextWatcher;->a:Z

    .line 66
    add-int/lit8 v2, v0, 0x1

    const-string/jumbo v3, "*"

    invoke-interface {p1, v0, v2, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6

    .prologue
    .line 83
    invoke-static {p1}, Lcom/alipay/android/app/template/FBPasswordTextWatcher;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 85
    iget-object v1, p0, Lcom/alipay/android/app/template/FBPasswordTextWatcher;->c:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 86
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/alipay/android/app/template/FBPasswordTextWatcher;->b:Lcom/flybird/FBInput;

    invoke-virtual {v0}, Lcom/flybird/FBInput;->getFBDocument()Lcom/flybird/FBDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flybird/FBDocument;->getTemplatePasswordService()Lcom/alipay/android/app/template/TemplatePasswordService;

    move-result-object v0

    iget v1, p0, Lcom/alipay/android/app/template/FBPasswordTextWatcher;->d:I

    invoke-interface {v0, v1}, Lcom/alipay/android/app/template/TemplatePasswordService;->clear(I)V

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    iget-boolean v0, p0, Lcom/alipay/android/app/template/FBPasswordTextWatcher;->a:Z

    if-nez v0, :cond_2

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/template/FBPasswordTextWatcher;->b:Lcom/flybird/FBInput;

    invoke-virtual {v0}, Lcom/flybird/FBInput;->getFBDocument()Lcom/flybird/FBDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flybird/FBDocument;->getTemplatePasswordService()Lcom/alipay/android/app/template/TemplatePasswordService;

    move-result-object v0

    iget v1, p0, Lcom/alipay/android/app/template/FBPasswordTextWatcher;->d:I

    .line 94
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    move v3, p2

    move v4, p3

    move v5, p4

    .line 93
    invoke-interface/range {v0 .. v5}, Lcom/alipay/android/app/template/TemplatePasswordService;->onTextChanged(ILjava/lang/String;III)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :cond_2
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/template/FBPasswordTextWatcher;->a:Z

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
