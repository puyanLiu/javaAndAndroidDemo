.class final Lcom/alipay/mobile/socialsdk/api/util/a;
.super Ljava/lang/Object;
.source "CustomDialogUtil.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private final synthetic a:Z

.field private final synthetic b:Landroid/widget/EditText;

.field private final synthetic c:I

.field private final synthetic d:Landroid/widget/TextView;


# direct methods
.method constructor <init>(ZLandroid/widget/EditText;ILandroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 1
    iput-boolean p1, p0, Lcom/alipay/mobile/socialsdk/api/util/a;->a:Z

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/api/util/a;->b:Landroid/widget/EditText;

    iput p3, p0, Lcom/alipay/mobile/socialsdk/api/util/a;->c:I

    iput-object p4, p0, Lcom/alipay/mobile/socialsdk/api/util/a;->d:Landroid/widget/TextView;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/util/a;->a:Z

    if-eqz v0, :cond_2

    .line 93
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/util/a;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    .line 94
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/api/util/StringUtil;->getWordCount(Ljava/lang/String;)I

    move-result v1

    iget v2, p0, Lcom/alipay/mobile/socialsdk/api/util/a;->c:I

    if-le v1, v2, :cond_0

    .line 95
    add-int/lit8 v1, v0, -0x1

    invoke-interface {p1, v1, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 96
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/util/a;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/util/a;->b:Landroid/widget/EditText;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 99
    :cond_0
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/api/util/StringUtil;->getWordCount(Ljava/lang/String;)I

    move-result v0

    .line 100
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/api/util/a;->d:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/alipay/mobile/socialsdk/api/util/a;->c:I

    sub-int/2addr v3, v0

    if-gez v3, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    :goto_1
    return-void

    .line 100
    :cond_1
    iget v3, p0, Lcom/alipay/mobile/socialsdk/api/util/a;->c:I

    sub-int v0, v3, v0

    goto :goto_0

    .line 102
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/util/a;->d:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/alipay/mobile/socialsdk/api/util/a;->c:I

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 88
    return-void
.end method
