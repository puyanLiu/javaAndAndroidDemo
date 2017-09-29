.class public Lcom/alipay/android/app/template/FBSimplePasswordTextWatcher;
.super Ljava/lang/Object;
.source "FBSimplePasswordTextWatcher.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private a:Z

.field private b:Lcom/flybird/FBInput;

.field private c:I


# direct methods
.method public constructor <init>(Lcom/flybird/FBInput;)V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/template/FBSimplePasswordTextWatcher;->a:Z

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/template/FBSimplePasswordTextWatcher;->b:Lcom/flybird/FBInput;

    .line 12
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/android/app/template/FBSimplePasswordTextWatcher;->c:I

    .line 15
    iput-object p1, p0, Lcom/alipay/android/app/template/FBSimplePasswordTextWatcher;->b:Lcom/flybird/FBInput;

    .line 16
    iget-object v0, p0, Lcom/alipay/android/app/template/FBSimplePasswordTextWatcher;->b:Lcom/flybird/FBInput;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/template/FBSimplePasswordTextWatcher;->c:I

    .line 17
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    .prologue
    .line 21
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    .line 22
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    .line 28
    return-void

    .line 23
    :cond_0
    invoke-interface {p1, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-eq v2, v3, :cond_1

    .line 24
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/alipay/android/app/template/FBSimplePasswordTextWatcher;->a:Z

    .line 25
    add-int/lit8 v2, v0, 0x1

    const-string/jumbo v3, "0"

    invoke-interface {p1, v0, v2, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 22
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 33
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/alipay/android/app/template/FBSimplePasswordTextWatcher;->a:Z

    if-nez v0, :cond_0

    .line 39
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/template/FBSimplePasswordTextWatcher;->b:Lcom/flybird/FBInput;

    invoke-virtual {v0}, Lcom/flybird/FBInput;->getFBDocument()Lcom/flybird/FBDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flybird/FBDocument;->getTemplatePasswordService()Lcom/alipay/android/app/template/TemplatePasswordService;

    move-result-object v0

    .line 40
    iget v1, p0, Lcom/alipay/android/app/template/FBSimplePasswordTextWatcher;->c:I

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/alipay/android/app/template/TemplatePasswordService;->onTextChanged(ILjava/lang/String;III)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/template/FBSimplePasswordTextWatcher;->a:Z

    .line 45
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
