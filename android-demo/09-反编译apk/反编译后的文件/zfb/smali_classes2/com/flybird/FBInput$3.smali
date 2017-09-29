.class Lcom/flybird/FBInput$3;
.super Ljava/lang/Object;
.source "FBInput.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/flybird/FBInput;


# direct methods
.method constructor <init>(Lcom/flybird/FBInput;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/flybird/FBInput$3;->a:Lcom/flybird/FBInput;

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 289
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    move v0, v1

    .line 290
    :goto_0
    const/4 v3, 0x6

    if-lt v0, v3, :cond_0

    .line 299
    iget-object v0, p0, Lcom/flybird/FBInput$3;->a:Lcom/flybird/FBInput;

    invoke-static {v0}, Lcom/flybird/FBInput;->f(Lcom/flybird/FBInput;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 300
    iget-object v0, p0, Lcom/flybird/FBInput$3;->a:Lcom/flybird/FBInput;

    invoke-static {v0}, Lcom/flybird/FBInput;->f(Lcom/flybird/FBInput;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 301
    return-void

    .line 291
    :cond_0
    iget-object v3, p0, Lcom/flybird/FBInput$3;->a:Lcom/flybird/FBInput;

    iget-object v3, v3, Lcom/flybird/FBInput;->e:Lcom/flybird/FBDocument;

    iget-object v3, v3, Lcom/flybird/FBDocument;->mContext:Landroid/app/Activity;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "spwd_iv_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/android/app/template/ResUtils;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 292
    iget-object v4, p0, Lcom/flybird/FBInput$3;->a:Lcom/flybird/FBInput;

    invoke-static {v4}, Lcom/flybird/FBInput;->f(Lcom/flybird/FBInput;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 293
    if-ge v0, v2, :cond_1

    .line 294
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 290
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 296
    :cond_1
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 285
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 281
    return-void
.end method
